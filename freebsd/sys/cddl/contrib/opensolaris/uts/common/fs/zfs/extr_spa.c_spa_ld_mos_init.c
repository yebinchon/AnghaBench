
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ spa_config_source; int spa_trust_config; } ;
typedef TYPE_1__ spa_t ;
typedef scalar_t__ spa_import_type_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int MUTEX_HELD (int *) ;
 scalar_t__ SPA_CONFIG_SRC_NONE ;
 scalar_t__ SPA_IMPORT_ASSEMBLE ;
 int spa_ld_open_rootbp (TYPE_1__*) ;
 int spa_ld_open_vdevs (TYPE_1__*) ;
 int spa_ld_parse_config (TYPE_1__*,scalar_t__) ;
 int spa_ld_select_uberblock (TYPE_1__*,scalar_t__) ;
 int spa_ld_validate_vdevs (TYPE_1__*) ;
 int spa_namespace_lock ;

__attribute__((used)) static int
spa_ld_mos_init(spa_t *spa, spa_import_type_t type)
{
 int error = 0;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(spa->spa_config_source != SPA_CONFIG_SRC_NONE);
 if (type != SPA_IMPORT_ASSEMBLE)
  spa->spa_trust_config = B_FALSE;




 error = spa_ld_parse_config(spa, type);
 if (error != 0)
  return (error);
 error = spa_ld_open_vdevs(spa);
 if (error != 0)
  return (error);
 if (type != SPA_IMPORT_ASSEMBLE) {
  error = spa_ld_validate_vdevs(spa);
  if (error != 0)
   return (error);
 }
 error = spa_ld_select_uberblock(spa, type);
 if (error != 0)
  return (error);






 error = spa_ld_open_rootbp(spa);
 if (error != 0)
  return (error);

 return (0);
}
