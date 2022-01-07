
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ spa_freeze_txg; } ;
typedef TYPE_1__ spa_t ;


 int FTAG ;
 int RW_WRITER ;
 int SCL_ALL ;
 scalar_t__ TXG_SIZE ;
 scalar_t__ UINT64_MAX ;
 int spa_config_enter (TYPE_1__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_1__*,int ,int ) ;
 int spa_get_dsl (TYPE_1__*) ;
 scalar_t__ spa_last_synced_txg (TYPE_1__*) ;
 int txg_wait_synced (int ,scalar_t__) ;

void
spa_freeze(spa_t *spa)
{
 uint64_t freeze_txg = 0;

 spa_config_enter(spa, SCL_ALL, FTAG, RW_WRITER);
 if (spa->spa_freeze_txg == UINT64_MAX) {
  freeze_txg = spa_last_synced_txg(spa) + TXG_SIZE;
  spa->spa_freeze_txg = freeze_txg;
 }
 spa_config_exit(spa, SCL_ALL, FTAG);
 if (freeze_txg != 0)
  txg_wait_synced(spa_get_dsl(spa), freeze_txg);
}
