
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct be_mountcheck_info {int name; int path; } ;


 int free (char*) ;
 scalar_t__ strcmp (char*,int ) ;
 int strdup (int ) ;
 int zfs_get_name (int *) ;
 int zfs_is_mounted (int *,char**) ;

__attribute__((used)) static int
be_mountcheck_cb(zfs_handle_t *zfs_hdl, void *data)
{
 struct be_mountcheck_info *info;
 char *mountpoint;

 if (data == ((void*)0))
  return (1);
 info = (struct be_mountcheck_info *)data;
 if (!zfs_is_mounted(zfs_hdl, &mountpoint))
  return (0);
 if (strcmp(mountpoint, info->path) == 0) {
  info->name = strdup(zfs_get_name(zfs_hdl));
  free(mountpoint);
  return (1);
 }
 free(mountpoint);
 return (0);
}
