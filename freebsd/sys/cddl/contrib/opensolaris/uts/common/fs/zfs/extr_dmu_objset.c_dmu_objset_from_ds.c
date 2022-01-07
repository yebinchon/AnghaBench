
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_9__ {int ds_opening_lock; int * ds_objset; int ds_lock; int ds_bp_rwlock; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_8__ {int dd_pool; } ;


 int ASSERT (int) ;
 int FTAG ;
 int RW_READER ;
 int dmu_objset_open_impl (int ,TYPE_2__*,int ,int **) ;
 int dsl_dataset_get_blkptr (TYPE_2__*) ;
 int dsl_dataset_get_spa (TYPE_2__*) ;
 scalar_t__ dsl_dataset_long_held (TYPE_2__*) ;
 scalar_t__ dsl_pool_config_held (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rrw_enter (int *,int ,int ) ;
 int rrw_exit (int *,int ) ;

int
dmu_objset_from_ds(dsl_dataset_t *ds, objset_t **osp)
{
 int err = 0;





 ASSERT(dsl_pool_config_held(ds->ds_dir->dd_pool) ||
     dsl_dataset_long_held(ds));

 mutex_enter(&ds->ds_opening_lock);
 if (ds->ds_objset == ((void*)0)) {
  objset_t *os;
  rrw_enter(&ds->ds_bp_rwlock, RW_READER, FTAG);
  err = dmu_objset_open_impl(dsl_dataset_get_spa(ds),
      ds, dsl_dataset_get_blkptr(ds), &os);
  rrw_exit(&ds->ds_bp_rwlock, FTAG);

  if (err == 0) {
   mutex_enter(&ds->ds_lock);
   ASSERT(ds->ds_objset == ((void*)0));
   ds->ds_objset = os;
   mutex_exit(&ds->ds_lock);
  }
 }
 *osp = ds->ds_objset;
 mutex_exit(&ds->ds_opening_lock);
 return (err);
}
