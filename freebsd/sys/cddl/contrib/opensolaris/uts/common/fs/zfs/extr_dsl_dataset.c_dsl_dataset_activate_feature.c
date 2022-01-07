
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zero ;
typedef int uint64_t ;
typedef int spa_t ;
typedef size_t spa_feature_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int * dp_meta_objset; int * dp_spa; } ;
struct TYPE_3__ {int fi_flags; int fi_guid; } ;


 int DMU_OT_DSL_DATASET ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 int ZFEATURE_FLAG_PER_DATASET ;
 int dmu_object_zapify (int *,int ,int ,int *) ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int spa_feature_incr (int *,size_t,int *) ;
 TYPE_1__* spa_feature_table ;
 int zap_add (int *,int ,int ,int,int,int *,int *) ;

__attribute__((used)) static void
dsl_dataset_activate_feature(uint64_t dsobj, spa_feature_t f, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;
 objset_t *mos = dmu_tx_pool(tx)->dp_meta_objset;
 uint64_t zero = 0;

 VERIFY(spa_feature_table[f].fi_flags & ZFEATURE_FLAG_PER_DATASET);

 spa_feature_incr(spa, f, tx);
 dmu_object_zapify(mos, dsobj, DMU_OT_DSL_DATASET, tx);

 VERIFY0(zap_add(mos, dsobj, spa_feature_table[f].fi_guid,
     sizeof (zero), 1, &zero, tx));
}
