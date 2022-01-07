
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_10__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int ds_object; TYPE_6__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_13__ {int dd_dbuf; } ;
struct TYPE_12__ {scalar_t__ dd_origin_obj; scalar_t__ dd_clones; } ;


 int DMU_OT_DSL_CLONES ;
 int DMU_OT_NONE ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 int dsl_dataset_hold_obj (TYPE_1__*,scalar_t__,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 TYPE_5__* dsl_dir_phys (TYPE_6__*) ;
 int zap_add_int (int *,scalar_t__,int ,int *) ;
 scalar_t__ zap_create (int *,int ,int ,int ,int *) ;

__attribute__((used)) static int
upgrade_dir_clones_cb(dsl_pool_t *dp, dsl_dataset_t *ds, void *arg)
{
 dmu_tx_t *tx = arg;
 objset_t *mos = dp->dp_meta_objset;

 if (dsl_dir_phys(ds->ds_dir)->dd_origin_obj != 0) {
  dsl_dataset_t *origin;

  VERIFY0(dsl_dataset_hold_obj(dp,
      dsl_dir_phys(ds->ds_dir)->dd_origin_obj, FTAG, &origin));

  if (dsl_dir_phys(origin->ds_dir)->dd_clones == 0) {
   dmu_buf_will_dirty(origin->ds_dir->dd_dbuf, tx);
   dsl_dir_phys(origin->ds_dir)->dd_clones =
       zap_create(mos, DMU_OT_DSL_CLONES, DMU_OT_NONE,
       0, tx);
  }

  VERIFY0(zap_add_int(dp->dp_meta_objset,
      dsl_dir_phys(origin->ds_dir)->dd_clones,
      ds->ds_object, tx));

  dsl_dataset_rele(origin, FTAG);
 }
 return (0);
}
