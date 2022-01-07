
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t fi_feature; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__* spa_feat_refcount_cache; } ;
typedef TYPE_2__ spa_t ;


 int ASSERT (int ) ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_FEATURE_DISABLED ;
 int VALID_FEATURE_FID (size_t) ;

int
feature_get_refcount(spa_t *spa, zfeature_info_t *feature, uint64_t *res)
{
 ASSERT(VALID_FEATURE_FID(feature->fi_feature));
 if (spa->spa_feat_refcount_cache[feature->fi_feature] ==
     SPA_FEATURE_DISABLED) {
  return (SET_ERROR(ENOTSUP));
 }
 *res = spa->spa_feat_refcount_cache[feature->fi_feature];
 return (0);
}
