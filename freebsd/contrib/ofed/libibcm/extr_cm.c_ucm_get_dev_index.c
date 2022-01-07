
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBV_SYSFS_NAME_MAX ;
 int IB_UCM_MAX_DEVICES ;
 int asprintf (char**,char*,int) ;
 int free (char*) ;
 int ibv_read_sysfs_file (char*,char*,char*,int) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static int ucm_get_dev_index(char *dev_name)
{
 char *dev_path;
 char ibdev[IBV_SYSFS_NAME_MAX];
 int i, ret;

 for (i = 0; i < IB_UCM_MAX_DEVICES; i++) {
  ret = asprintf(&dev_path, "/sys/class/infiniband_cm/ucm%d", i);
  if (ret < 0)
   return -1;

  ret = ibv_read_sysfs_file(dev_path, "ibdev", ibdev, sizeof ibdev);
  if (ret < 0)
   continue;

  if (!strcmp(dev_name, ibdev)) {
   free(dev_path);
   return i;
  }

  free(dev_path);
 }
 return -1;
}
