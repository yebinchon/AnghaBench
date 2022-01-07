
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;
typedef int pool_scrub_cmd_t ;


 int ASSERT (int) ;
 int EBUSY ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 scalar_t__ dsl_scan_resilvering (int ) ;
 int dsl_scrub_set_pause_resume (int ,int ) ;
 scalar_t__ spa_config_held (TYPE_1__*,int ,int ) ;

int
spa_scrub_pause_resume(spa_t *spa, pool_scrub_cmd_t cmd)
{
 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == 0);

 if (dsl_scan_resilvering(spa->spa_dsl_pool))
  return (SET_ERROR(EBUSY));

 return (dsl_scrub_set_pause_resume(spa->spa_dsl_pool, cmd));
}
