Facter.add("mysql_version") do
  setcode do
    mysql_ver = Facter::Util::Resolution.exec('mysql --version')
    if mysql_ver
      mysql_ver.match(/\d+\.\d+\.\d+/)[0]
    end
  end
end

Facter.add("mysql_version_major") do
  setcode do
    mysql_ver = Facter.value(:mysql_version)
    if mysql_ver
      mysql_ver.split('.')[0]
    end
  end
end

Facter.add("mysql_version_minor") do
  setcode do
    mysql_ver = Facter.value(:mysql_version)
    if mysql_ver
      mysql_ver.split('.')[1]
    end
  end
end

Facter.add("mysql_version_micro") do
  setcode do
    mysql_ver = Facter.value(:mysql_version)
    if mysql_ver
      mysql_ver.split('.')[2]
    end
  end
end
