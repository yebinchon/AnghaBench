
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zl_issuer_lock; int zl_spa; int zl_lock; } ;
typedef TYPE_1__ zilog_t ;
struct TYPE_9__ {scalar_t__ zcw_done; int * zcw_lwb; } ;
typedef TYPE_2__ zil_commit_waiter_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_writeable (int ) ;
 int zil_get_commit_list (TYPE_1__*) ;
 int zil_process_commit_list (TYPE_1__*) ;
 int zil_prune_commit_list (TYPE_1__*) ;

__attribute__((used)) static void
zil_commit_writer(zilog_t *zilog, zil_commit_waiter_t *zcw)
{
 ASSERT(!MUTEX_HELD(&zilog->zl_lock));
 ASSERT(spa_writeable(zilog->zl_spa));

 mutex_enter(&zilog->zl_issuer_lock);

 if (zcw->zcw_lwb != ((void*)0) || zcw->zcw_done) {
  goto out;
 }

 zil_get_commit_list(zilog);
 zil_prune_commit_list(zilog);
 zil_process_commit_list(zilog);

out:
 mutex_exit(&zilog->zl_issuer_lock);
}
