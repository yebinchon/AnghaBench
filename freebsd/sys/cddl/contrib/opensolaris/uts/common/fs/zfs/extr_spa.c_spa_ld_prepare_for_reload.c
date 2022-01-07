
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_mode; int spa_async_suspended; } ;
typedef TYPE_1__ spa_t ;


 int spa_activate (TYPE_1__*,int) ;
 int spa_deactivate (TYPE_1__*) ;
 int spa_unload (TYPE_1__*) ;

__attribute__((used)) static void
spa_ld_prepare_for_reload(spa_t *spa)
{
 int mode = spa->spa_mode;
 int async_suspended = spa->spa_async_suspended;

 spa_unload(spa);
 spa_deactivate(spa);
 spa_activate(spa, mode);






 spa->spa_async_suspended = async_suspended;
}
