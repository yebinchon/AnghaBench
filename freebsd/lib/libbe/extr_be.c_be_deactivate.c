
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_3__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int ZFS_TYPE_DATASET ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char const*,int ) ;
 scalar_t__ zfs_prop_set (int *,char*,char*) ;

__attribute__((used)) static int
be_deactivate(libbe_handle_t *lbh, const char *ds)
{
 zfs_handle_t *zfs;

 if ((zfs = zfs_open(lbh->lzh, ds, ZFS_TYPE_DATASET)) == ((void*)0))
  return (1);
 if (zfs_prop_set(zfs, "canmount", "noauto") != 0)
  return (1);
 zfs_close(zfs);
 return (0);
}
