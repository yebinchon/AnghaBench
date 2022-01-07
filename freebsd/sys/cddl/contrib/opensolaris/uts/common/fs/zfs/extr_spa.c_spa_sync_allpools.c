
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;


 int FTAG ;
 scalar_t__ POOL_STATE_ACTIVE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_close (int *,int ) ;
 int spa_get_dsl (int *) ;
 int spa_namespace_lock ;
 int * spa_next (int *) ;
 int spa_open_ref (int *,int ) ;
 scalar_t__ spa_state (int *) ;
 scalar_t__ spa_suspended (int *) ;
 int spa_writeable (int *) ;
 int txg_wait_synced (int ,int ) ;

void
spa_sync_allpools(void)
{
 spa_t *spa = ((void*)0);
 mutex_enter(&spa_namespace_lock);
 while ((spa = spa_next(spa)) != ((void*)0)) {
  if (spa_state(spa) != POOL_STATE_ACTIVE ||
      !spa_writeable(spa) || spa_suspended(spa))
   continue;
  spa_open_ref(spa, FTAG);
  mutex_exit(&spa_namespace_lock);
  txg_wait_synced(spa_get_dsl(spa), 0);
  mutex_enter(&spa_namespace_lock);
  spa_close(spa, FTAG);
 }
 mutex_exit(&spa_namespace_lock);
}
