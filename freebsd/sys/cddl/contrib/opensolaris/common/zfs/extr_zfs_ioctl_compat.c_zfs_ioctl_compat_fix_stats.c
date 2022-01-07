
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zc_iflags; int zc_nvlist_dst_size; int zc_nvlist_dst; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;


 int nvlist_free (int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 scalar_t__ nvpair_value_nvlist (int *,int **) ;
 int zfs_ioctl_compat_fix_stats_nvlist (int *) ;
 int zfs_ioctl_compat_get_nvlist (int ,int ,int ,int **) ;
 int zfs_ioctl_compat_put_nvlist (TYPE_1__*,int *) ;

__attribute__((used)) static int
zfs_ioctl_compat_fix_stats(zfs_cmd_t *zc, const int nc)
{
 nvlist_t *nv, *nvp = ((void*)0);
 nvpair_t *elem;
 int error;

 if ((error = zfs_ioctl_compat_get_nvlist(zc->zc_nvlist_dst,
     zc->zc_nvlist_dst_size, zc->zc_iflags, &nv)) != 0)
  return (error);

 if (nc == 5) {
  elem = ((void*)0);
  while ((elem = nvlist_next_nvpair(nv, elem)) != ((void*)0)) {
   if (nvpair_value_nvlist(elem, &nvp) == 0)
    zfs_ioctl_compat_fix_stats_nvlist(nvp);
  }
  elem = ((void*)0);
 } else
  zfs_ioctl_compat_fix_stats_nvlist(nv);

 error = zfs_ioctl_compat_put_nvlist(zc, nv);

 nvlist_free(nv);

 return (error);
}
