
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dsl_pool_t ;
struct TYPE_13__ {int ds_is_snapshot; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_replay_record_t ;
typedef int boolean_t ;
struct TYPE_14__ {int ds_uncompressed_bytes; int ds_compressed_bytes; } ;
struct TYPE_12__ {int * dd_pool; } ;


 int ASSERT (int ) ;
 int EINVAL ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int dmu_adjust_send_estimate_for_indirects (TYPE_2__*,int,int,int ,int*) ;
 int dsl_dataset_is_before (TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_5__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_dataset_space_written (TYPE_2__*,TYPE_2__*,int*,int*,int*) ;
 int dsl_pool_config_held (int *) ;

int
dmu_send_estimate(dsl_dataset_t *ds, dsl_dataset_t *fromds,
    boolean_t stream_compressed, uint64_t *sizep)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 int err;
 uint64_t uncomp, comp;

 ASSERT(dsl_pool_config_held(dp));


 if (!ds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));


 if (fromds != ((void*)0) && !fromds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));





 if (fromds != ((void*)0) && !dsl_dataset_is_before(ds, fromds, 0))
  return (SET_ERROR(EXDEV));


 if (fromds == ((void*)0)) {
  uncomp = dsl_dataset_phys(ds)->ds_uncompressed_bytes;
  comp = dsl_dataset_phys(ds)->ds_compressed_bytes;
 } else {
  uint64_t used;
  err = dsl_dataset_space_written(fromds, ds,
      &used, &comp, &uncomp);
  if (err != 0)
   return (err);
 }

 err = dmu_adjust_send_estimate_for_indirects(ds, uncomp, comp,
     stream_compressed, sizep);



 *sizep += 2 * sizeof (dmu_replay_record_t);
 return (err);
}
