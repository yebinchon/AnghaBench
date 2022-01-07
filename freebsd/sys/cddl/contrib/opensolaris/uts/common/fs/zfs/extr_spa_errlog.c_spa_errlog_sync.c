
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_scrub_finished; int spa_errlog_lock; int spa_errlog_scrub; int spa_meta_objset; int spa_errlog_last; int spa_dsl_pool; int spa_errlist_lock; int spa_errlist_last; int spa_errlist_scrub; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;
typedef int avl_tree_t ;


 int B_FALSE ;
 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ERRLOG_LAST ;
 int DMU_POOL_ERRLOG_SCRUB ;
 int VERIFY (int) ;
 scalar_t__ avl_numnodes (int *) ;
 scalar_t__ dmu_object_free (int ,int ,int *) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_assigned (int ,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_get_errlists (TYPE_1__*,int *,int *) ;
 int sync_error_list (TYPE_1__*,int *,int *,int *) ;
 int zap_update (int ,int ,int ,int,int,int *,int *) ;

void
spa_errlog_sync(spa_t *spa, uint64_t txg)
{
 dmu_tx_t *tx;
 avl_tree_t scrub, last;
 int scrub_finished;

 mutex_enter(&spa->spa_errlist_lock);




 if (avl_numnodes(&spa->spa_errlist_scrub) == 0 &&
     avl_numnodes(&spa->spa_errlist_last) == 0 &&
     !spa->spa_scrub_finished) {
  mutex_exit(&spa->spa_errlist_lock);
  return;
 }

 spa_get_errlists(spa, &last, &scrub);
 scrub_finished = spa->spa_scrub_finished;
 spa->spa_scrub_finished = B_FALSE;

 mutex_exit(&spa->spa_errlist_lock);
 mutex_enter(&spa->spa_errlog_lock);

 tx = dmu_tx_create_assigned(spa->spa_dsl_pool, txg);




 sync_error_list(spa, &last, &spa->spa_errlog_last, tx);




 if (scrub_finished) {
  if (spa->spa_errlog_last != 0)
   VERIFY(dmu_object_free(spa->spa_meta_objset,
       spa->spa_errlog_last, tx) == 0);
  spa->spa_errlog_last = spa->spa_errlog_scrub;
  spa->spa_errlog_scrub = 0;

  sync_error_list(spa, &scrub, &spa->spa_errlog_last, tx);
 }




 sync_error_list(spa, &scrub, &spa->spa_errlog_scrub, tx);




 (void) zap_update(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_ERRLOG_LAST, sizeof (uint64_t), 1,
     &spa->spa_errlog_last, tx);
 (void) zap_update(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_ERRLOG_SCRUB, sizeof (uint64_t), 1,
     &spa->spa_errlog_scrub, tx);

 dmu_tx_commit(tx);

 mutex_exit(&spa->spa_errlog_lock);
}
