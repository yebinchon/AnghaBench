
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int objset_t ;
struct TYPE_5__ {int dd_object; TYPE_1__* dd_pool; } ;
typedef TYPE_2__ dsl_dir_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int * dp_meta_objset; } ;


 int DMU_OT_DSL_DIR ;
 int dmu_object_zapify (int *,int ,int ,int *) ;

void
dsl_dir_zapify(dsl_dir_t *dd, dmu_tx_t *tx)
{
 objset_t *mos = dd->dd_pool->dp_meta_objset;
 dmu_object_zapify(mos, dd->dd_object, DMU_OT_DSL_DIR, tx);
}
