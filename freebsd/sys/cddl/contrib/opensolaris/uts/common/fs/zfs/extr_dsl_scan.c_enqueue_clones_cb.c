
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int dsl_scan_t ;
struct TYPE_11__ {int * dp_scan; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_12__ {scalar_t__ ds_object; int ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_14__ {scalar_t__ ds_prev_snap_obj; int ds_prev_snap_txg; } ;
struct TYPE_13__ {scalar_t__ dd_origin_obj; } ;


 int FTAG ;
 int dsl_dataset_hold_obj (TYPE_1__*,scalar_t__,int ,TYPE_2__**) ;
 TYPE_7__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 TYPE_5__* dsl_dir_phys (int ) ;
 int scan_ds_queue_insert (int *,scalar_t__,int ) ;

__attribute__((used)) static int
enqueue_clones_cb(dsl_pool_t *dp, dsl_dataset_t *hds, void *arg)
{
 uint64_t originobj = *(uint64_t *)arg;
 dsl_dataset_t *ds;
 int err;
 dsl_scan_t *scn = dp->dp_scan;

 if (dsl_dir_phys(hds->ds_dir)->dd_origin_obj != originobj)
  return (0);

 err = dsl_dataset_hold_obj(dp, hds->ds_object, FTAG, &ds);
 if (err)
  return (err);

 while (dsl_dataset_phys(ds)->ds_prev_snap_obj != originobj) {
  dsl_dataset_t *prev;
  err = dsl_dataset_hold_obj(dp,
      dsl_dataset_phys(ds)->ds_prev_snap_obj, FTAG, &prev);

  dsl_dataset_rele(ds, FTAG);
  if (err)
   return (err);
  ds = prev;
 }
 scan_ds_queue_insert(scn, ds->ds_object,
     dsl_dataset_phys(ds)->ds_prev_snap_txg);
 dsl_dataset_rele(ds, FTAG);
 return (0);
}
