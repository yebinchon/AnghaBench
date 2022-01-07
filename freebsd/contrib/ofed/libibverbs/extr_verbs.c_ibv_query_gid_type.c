
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct ibv_context {TYPE_1__* device; } ;
typedef int name ;
typedef enum ibv_gid_type { ____Placeholder_ibv_gid_type } ibv_gid_type ;
typedef int buff ;
struct TYPE_2__ {int ibdev_path; } ;
typedef int DIR ;


 scalar_t__ EFAULT ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTSUP ;
 int IBV_GID_TYPE_IB_ROCE_V1 ;
 int IBV_GID_TYPE_ROCE_V2 ;
 int V1_TYPE ;
 int V2_TYPE ;
 scalar_t__ asprintf (char**,char*,int ,char*,int,char*) ;
 int closedir (int *) ;
 scalar_t__ errno ;
 int free (char*) ;
 scalar_t__ ibv_read_sysfs_file (int ,char*,char*,int) ;
 int * opendir (char*) ;
 int snprintf (char*,int,char*,int,unsigned int) ;
 int strcmp (char*,int ) ;

int ibv_query_gid_type(struct ibv_context *context, uint8_t port_num,
         unsigned int index, enum ibv_gid_type *type)
{
 char name[32];
 char buff[11];

 snprintf(name, sizeof(name), "ports/%d/gid_attrs/types/%d", port_num,
   index);




 errno = 0;
 if (ibv_read_sysfs_file(context->device->ibdev_path, name, buff,
    sizeof(buff)) <= 0) {
  char *dir_path;
  DIR *dir;

  if (errno == EINVAL) {



   *type = IBV_GID_TYPE_IB_ROCE_V1;
   return 0;
  }
  if (asprintf(&dir_path, "%s/%s/%d/%s/",
        context->device->ibdev_path, "ports", port_num,
        "gid_attrs") < 0)
   return -1;
  dir = opendir(dir_path);
  free(dir_path);
  if (!dir) {
   if (errno == ENOENT)




    *type = IBV_GID_TYPE_IB_ROCE_V1;
   else
    return -1;
  } else {
   closedir(dir);
   errno = EFAULT;
   return -1;
  }
 } else {
  if (!strcmp(buff, V1_TYPE)) {
   *type = IBV_GID_TYPE_IB_ROCE_V1;
  } else if (!strcmp(buff, V2_TYPE)) {
   *type = IBV_GID_TYPE_ROCE_V2;
  } else {
   errno = ENOTSUP;
   return -1;
  }
 }

 return 0;
}
