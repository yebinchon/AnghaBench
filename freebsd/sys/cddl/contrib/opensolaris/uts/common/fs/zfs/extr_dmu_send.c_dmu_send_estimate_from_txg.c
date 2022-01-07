
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct calculate_send_arg {int compressed; int uncompressed; int member_0; } ;
typedef int dsl_pool_t ;
struct TYPE_9__ {int ds_is_snapshot; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int boolean_t ;
struct TYPE_10__ {scalar_t__ ds_creation_txg; } ;
struct TYPE_8__ {int * dd_pool; } ;


 int ASSERT (int ) ;
 int EINVAL ;
 int EXDEV ;
 int SET_ERROR (int ) ;
 int TRAVERSE_POST ;
 int dmu_adjust_send_estimate_for_indirects (TYPE_2__*,int ,int ,int ,scalar_t__*) ;
 int dmu_calculate_send_traversal ;
 TYPE_4__* dsl_dataset_phys (TYPE_2__*) ;
 int dsl_pool_config_held (int *) ;
 int traverse_dataset (TYPE_2__*,scalar_t__,int ,int ,struct calculate_send_arg*) ;

int
dmu_send_estimate_from_txg(dsl_dataset_t *ds, uint64_t from_txg,
    boolean_t stream_compressed, uint64_t *sizep)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 int err;
 struct calculate_send_arg size = { 0 };

 ASSERT(dsl_pool_config_held(dp));


 if (!ds->ds_is_snapshot)
  return (SET_ERROR(EINVAL));


 if (from_txg >= dsl_dataset_phys(ds)->ds_creation_txg) {
  return (SET_ERROR(EXDEV));
 }





 err = traverse_dataset(ds, from_txg, TRAVERSE_POST,
     dmu_calculate_send_traversal, &size);
 if (err)
  return (err);

 err = dmu_adjust_send_estimate_for_indirects(ds, size.uncompressed,
     size.compressed, stream_compressed, sizep);
 return (err);
}
