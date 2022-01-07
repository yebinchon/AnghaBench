
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zc_obj; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
struct TYPE_9__ {int os_dsl_dataset; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_10__ {int ds_prev_snap_txg; } ;


 int B_FALSE ;
 int FTAG ;
 int dmu_object_next (TYPE_2__*,int *,int ,int ) ;
 int dmu_objset_hold (int ,int ,TYPE_2__**) ;
 int dmu_objset_rele (TYPE_2__*,int ) ;
 TYPE_4__* dsl_dataset_phys (int ) ;

__attribute__((used)) static int
zfs_ioc_next_obj(zfs_cmd_t *zc)
{
 objset_t *os = ((void*)0);
 int error;

 error = dmu_objset_hold(zc->zc_name, FTAG, &os);
 if (error != 0)
  return (error);

 error = dmu_object_next(os, &zc->zc_obj, B_FALSE,
     dsl_dataset_phys(os->os_dsl_dataset)->ds_prev_snap_txg);

 dmu_objset_rele(os, FTAG);
 return (error);
}
