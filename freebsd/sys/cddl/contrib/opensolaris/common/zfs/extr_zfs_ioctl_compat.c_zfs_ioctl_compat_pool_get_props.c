
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_iflags; int zc_nvlist_dst_size; int zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int DATA_TYPE_NVLIST ;
 int nvlist_add_nvlist (int *,char*,int *) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int nvlist_remove (int *,char*,int ) ;
 int zfs_ioctl_compat_get_nvlist (int ,int ,int ,int **) ;
 int zfs_ioctl_compat_put_nvlist (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioctl_compat_pool_get_props(zfs_cmd_t *zc)
{
 nvlist_t *nv, *nva = ((void*)0);
 int error;

 if ((error = zfs_ioctl_compat_get_nvlist(zc->zc_nvlist_dst,
     zc->zc_nvlist_dst_size, zc->zc_iflags, &nv)) != 0)
  return (error);
 if (nvlist_lookup_nvlist(nv, "used", &nva) == 0) {
  nvlist_add_nvlist(nv, "allocated", nva);
  nvlist_remove(nv, "used", DATA_TYPE_NVLIST);
 }

 if (nvlist_lookup_nvlist(nv, "available", &nva) == 0) {
  nvlist_add_nvlist(nv, "free", nva);
  nvlist_remove(nv, "available", DATA_TYPE_NVLIST);
 }


 error = zfs_ioctl_compat_put_nvlist(zc, nv);

 nvlist_free(nv);

 return (error);
}
