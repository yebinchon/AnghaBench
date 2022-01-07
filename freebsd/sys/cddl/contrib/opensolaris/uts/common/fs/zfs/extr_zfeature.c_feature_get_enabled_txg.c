
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fi_guid; int fi_feature; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ spa_feat_enabled_txg_obj; int spa_meta_objset; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int) ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_ENABLED_TXG ;
 int VERIFY0 (int ) ;
 int spa_feature_is_enabled (TYPE_2__*,int ) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,scalar_t__*) ;
 int zfeature_depends_on (int ,int ) ;

__attribute__((used)) static int
feature_get_enabled_txg(spa_t *spa, zfeature_info_t *feature, uint64_t *res)
{
 uint64_t enabled_txg_obj = spa->spa_feat_enabled_txg_obj;

 ASSERT(zfeature_depends_on(feature->fi_feature,
     SPA_FEATURE_ENABLED_TXG));

 if (!spa_feature_is_enabled(spa, feature->fi_feature)) {
  return (SET_ERROR(ENOTSUP));
 }

 ASSERT(enabled_txg_obj != 0);

 VERIFY0(zap_lookup(spa->spa_meta_objset, spa->spa_feat_enabled_txg_obj,
     feature->fi_guid, sizeof (uint64_t), 1, res));

 return (0);
}
