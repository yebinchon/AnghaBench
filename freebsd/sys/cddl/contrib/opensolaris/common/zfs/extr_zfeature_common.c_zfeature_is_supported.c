
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fi_guid; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef size_t spa_feature_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 size_t SPA_FEATURES ;
 TYPE_1__* spa_feature_table ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ zfeature_checks_disable ;

boolean_t
zfeature_is_supported(const char *guid)
{
 if (zfeature_checks_disable)
  return (B_TRUE);

 for (spa_feature_t i = 0; i < SPA_FEATURES; i++) {
  zfeature_info_t *feature = &spa_feature_table[i];
  if (strcmp(guid, feature->fi_guid) == 0)
   return (B_TRUE);
 }
 return (B_FALSE);
}
