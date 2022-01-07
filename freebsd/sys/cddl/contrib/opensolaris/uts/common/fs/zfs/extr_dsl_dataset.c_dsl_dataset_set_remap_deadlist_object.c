
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int obj ;
struct TYPE_8__ {int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {TYPE_1__* dd_pool; } ;
struct TYPE_6__ {int dp_meta_objset; } ;


 int ASSERT (int) ;
 int DS_FIELD_REMAP_DEADLIST ;
 int VERIFY0 (int ) ;
 int dsl_dataset_zapify (TYPE_3__*,int *) ;
 int zap_add (int ,int ,int ,int,int,scalar_t__*,int *) ;

__attribute__((used)) static void
dsl_dataset_set_remap_deadlist_object(dsl_dataset_t *ds, uint64_t obj,
    dmu_tx_t *tx)
{
 ASSERT(obj != 0);
 dsl_dataset_zapify(ds, tx);
 VERIFY0(zap_add(ds->ds_dir->dd_pool->dp_meta_objset, ds->ds_object,
     DS_FIELD_REMAP_DEADLIST, sizeof (obj), 1, &obj, tx));
}
