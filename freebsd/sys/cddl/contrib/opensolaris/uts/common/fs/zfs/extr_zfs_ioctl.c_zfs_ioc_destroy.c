
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; int zc_defer_destroy; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;
typedef scalar_t__ dmu_objset_type_t ;


 scalar_t__ DMU_OST_ZFS ;
 scalar_t__ DMU_OST_ZVOL ;
 int FTAG ;
 int dmu_objset_hold (int ,int ,int **) ;
 int dmu_objset_rele (int *,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int dsl_destroy_head (int ) ;
 int dsl_destroy_snapshot (int ,int ) ;
 scalar_t__ strchr (int ,char) ;
 int zfs_unmount_snap (int ) ;
 int zvol_remove_minor (int ) ;
 int zvol_remove_minors (int ) ;

__attribute__((used)) static int
zfs_ioc_destroy(zfs_cmd_t *zc)
{
 objset_t *os;
 dmu_objset_type_t ost;
 int err;

 err = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (err != 0)
  return (err);
 ost = dmu_objset_type(os);
 dmu_objset_rele(os, FTAG);

 if (ost == DMU_OST_ZFS)
  zfs_unmount_snap(zc->zc_name);

 if (strchr(zc->zc_name, '@'))
  err = dsl_destroy_snapshot(zc->zc_name, zc->zc_defer_destroy);
 else
  err = dsl_destroy_head(zc->zc_name);
 if (ost == DMU_OST_ZVOL && err == 0)



  (void) zvol_remove_minor(zc->zc_name);

 return (err);
}
