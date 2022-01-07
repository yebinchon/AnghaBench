
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct ibv_device {int ibdev_path; } ;
typedef int __be64 ;


 int htobe64 (int) ;
 scalar_t__ ibv_read_sysfs_file (int ,char*,char*,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*) ;

__be64 __ibv_get_device_guid(struct ibv_device *device)
{
 char attr[24];
 uint64_t guid = 0;
 uint16_t parts[4];
 int i;

 if (ibv_read_sysfs_file(device->ibdev_path, "node_guid",
    attr, sizeof attr) < 0)
  return 0;

 if (sscanf(attr, "%hx:%hx:%hx:%hx",
     parts, parts + 1, parts + 2, parts + 3) != 4)
  return 0;

 for (i = 0; i < 4; ++i)
  guid = (guid << 16) | parts[i];

 return htobe64(guid);
}
