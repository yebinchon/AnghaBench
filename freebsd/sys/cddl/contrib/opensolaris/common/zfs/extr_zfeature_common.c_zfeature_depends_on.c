
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* fi_depends; } ;
typedef TYPE_1__ zfeature_info_t ;
typedef size_t spa_feature_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ SPA_FEATURE_NONE ;
 TYPE_1__* spa_feature_table ;

boolean_t
zfeature_depends_on(spa_feature_t fid, spa_feature_t check)
{
 zfeature_info_t *feature = &spa_feature_table[fid];

 for (int i = 0; feature->fi_depends[i] != SPA_FEATURE_NONE; i++) {
  if (feature->fi_depends[i] == check)
   return (B_TRUE);
 }
 return (B_FALSE);
}
