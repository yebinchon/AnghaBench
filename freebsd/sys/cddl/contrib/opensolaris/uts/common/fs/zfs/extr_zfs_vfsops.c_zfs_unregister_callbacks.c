
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int objset_t ;


 int dmu_objset_ds (int *) ;
 int dmu_objset_is_snapshot (int *) ;
 int dsl_prop_unregister_all (int ,TYPE_1__*) ;

void
zfs_unregister_callbacks(zfsvfs_t *zfsvfs)
{
 objset_t *os = zfsvfs->z_os;

 if (!dmu_objset_is_snapshot(os))
  dsl_prop_unregister_all(dmu_objset_ds(os), zfsvfs);
}
