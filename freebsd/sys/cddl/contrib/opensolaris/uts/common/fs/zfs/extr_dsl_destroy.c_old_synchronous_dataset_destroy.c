
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct killarg {int * tx; int * ds; } ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_2__ {scalar_t__ ds_unique_bytes; int ds_prev_snap_txg; } ;


 int ASSERT (int) ;
 int DS_UNIQUE_IS_ACCURATE (int *) ;
 int TRAVERSE_POST ;
 int VERIFY0 (int ) ;
 TYPE_1__* dsl_dataset_phys (int *) ;
 int kill_blkptr ;
 int traverse_dataset (int *,int ,int ,int ,struct killarg*) ;

__attribute__((used)) static void
old_synchronous_dataset_destroy(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 struct killarg ka;
 ka.ds = ds;
 ka.tx = tx;
 VERIFY0(traverse_dataset(ds,
     dsl_dataset_phys(ds)->ds_prev_snap_txg, TRAVERSE_POST,
     kill_blkptr, &ka));
 ASSERT(!DS_UNIQUE_IS_ACCURATE(ds) ||
     dsl_dataset_phys(ds)->ds_unique_bytes == 0);
}
