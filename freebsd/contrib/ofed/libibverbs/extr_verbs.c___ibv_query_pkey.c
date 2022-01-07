
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct ibv_context {TYPE_1__* device; } ;
typedef int __be16 ;
struct TYPE_2__ {int ibdev_path; } ;


 int htobe16 (int ) ;
 scalar_t__ ibv_read_sysfs_file (int ,char*,char*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int sscanf (char*,char*,int *) ;

int __ibv_query_pkey(struct ibv_context *context, uint8_t port_num,
       int index, __be16 *pkey)
{
 char name[24];
 char attr[8];
 uint16_t val;

 snprintf(name, sizeof name, "ports/%d/pkeys/%d", port_num, index);

 if (ibv_read_sysfs_file(context->device->ibdev_path, name,
    attr, sizeof attr) < 0)
  return -1;

 if (sscanf(attr, "%hx", &val) != 1)
  return -1;

 *pkey = htobe16(val);
 return 0;
}
