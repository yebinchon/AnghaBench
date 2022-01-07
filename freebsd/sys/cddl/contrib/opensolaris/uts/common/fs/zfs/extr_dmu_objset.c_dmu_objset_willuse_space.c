
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int os_spa; TYPE_2__* os_dsl_dataset; } ;
typedef TYPE_1__ objset_t ;
typedef int int64_t ;
struct TYPE_5__ {int ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
typedef int dmu_tx_t ;


 int dmu_tx_pool (int *) ;
 int dsl_dir_willuse_space (int ,int ,int *) ;
 int dsl_pool_dirty_space (int ,int ,int *) ;
 int spa_get_worst_case_asize (int ,int ) ;

void
dmu_objset_willuse_space(objset_t *os, int64_t space, dmu_tx_t *tx)
{
 dsl_dataset_t *ds = os->os_dsl_dataset;
 int64_t aspace = spa_get_worst_case_asize(os->os_spa, space);

 if (ds != ((void*)0)) {
  dsl_dir_willuse_space(ds->ds_dir, aspace, tx);
  dsl_pool_dirty_space(dmu_tx_pool(tx), space, tx);
 }
}
