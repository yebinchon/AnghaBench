
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spa_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
struct TYPE_3__ {scalar_t__ doi_bonus_size; } ;
typedef TYPE_1__ dmu_object_info_t ;


 scalar_t__ SPACE_MAP_SIZE_V0 ;
 int SPA_FEATURE_SPACEMAP_HISTOGRAM ;
 int VERIFY0 (int ) ;
 int dmu_object_free (int *,int ,int *) ;
 int dmu_object_info (int *,int ,TYPE_1__*) ;
 int * dmu_objset_spa (int *) ;
 int spa_feature_decr (int *,int ,int *) ;
 scalar_t__ spa_feature_is_enabled (int *,int ) ;

void
space_map_free_obj(objset_t *os, uint64_t smobj, dmu_tx_t *tx)
{
 spa_t *spa = dmu_objset_spa(os);
 if (spa_feature_is_enabled(spa, SPA_FEATURE_SPACEMAP_HISTOGRAM)) {
  dmu_object_info_t doi;

  VERIFY0(dmu_object_info(os, smobj, &doi));
  if (doi.doi_bonus_size != SPACE_MAP_SIZE_V0) {
   spa_feature_decr(spa,
       SPA_FEATURE_SPACEMAP_HISTOGRAM, tx);
  }
 }

 VERIFY0(dmu_object_free(os, smobj, tx));
}
