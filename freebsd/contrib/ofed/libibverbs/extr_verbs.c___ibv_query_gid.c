
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ibv_gid {int* raw; } ;
typedef int uint8_t ;
typedef int uint16_t ;
struct ibv_context {TYPE_1__* device; } ;
struct TYPE_2__ {int ibdev_path; } ;


 scalar_t__ ibv_read_sysfs_file (int ,char*,char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int sscanf (char*,char*,int*) ;

int __ibv_query_gid(struct ibv_context *context, uint8_t port_num,
      int index, union ibv_gid *gid)
{
 char name[24];
 char attr[41];
 uint16_t val;
 int i;

 snprintf(name, sizeof name, "ports/%d/gids/%d", port_num, index);

 if (ibv_read_sysfs_file(context->device->ibdev_path, name,
    attr, sizeof attr) < 0)
  return -1;

 for (i = 0; i < 8; ++i) {
  if (sscanf(attr + i * 5, "%hx", &val) != 1)
   return -1;
  gid->raw[i * 2 ] = val >> 8;
  gid->raw[i * 2 + 1] = val & 0xff;
 }

 return 0;
}
