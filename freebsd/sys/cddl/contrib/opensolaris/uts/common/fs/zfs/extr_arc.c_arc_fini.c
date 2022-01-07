
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_refcnt; } ;
typedef TYPE_1__ arc_prune_t ;


 int ASSERT0 (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 scalar_t__ TRUE ;
 int arc_adjust_lock ;
 int arc_adjust_waiters_cv ;
 int arc_adjust_zthr ;
 int arc_dnlc_evicts_cv ;
 int arc_dnlc_evicts_lock ;
 scalar_t__ arc_dnlc_evicts_thread_exit ;
 int * arc_event_lowmem ;
 int arc_flush (int *,int ) ;
 int arc_initialized ;
 int * arc_ksp ;
 int arc_loaned_bytes ;
 int arc_prune_list ;
 int arc_prune_mtx ;
 int arc_prune_taskq ;
 int arc_reap_zthr ;
 int arc_state_fini () ;
 int buf_fini () ;
 int cv_destroy (int *) ;
 int cv_signal (int *) ;
 int cv_wait (int *,int *) ;
 int kmem_free (TYPE_1__*,int) ;
 int kstat_delete (int *) ;
 int list_destroy (int *) ;
 TYPE_1__* list_head (int *) ;
 int list_remove (int *,TYPE_1__*) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int taskq_destroy (int ) ;
 int taskq_wait (int ) ;
 int vm_lowmem ;
 int zfs_refcount_destroy (int *) ;
 int zfs_refcount_remove (int *,int *) ;
 int zthr_cancel (int ) ;
 int zthr_destroy (int ) ;

void
arc_fini(void)
{
 arc_prune_t *p;







 arc_flush(((void*)0), B_TRUE);

 mutex_enter(&arc_dnlc_evicts_lock);
 arc_dnlc_evicts_thread_exit = TRUE;




 while (arc_dnlc_evicts_thread_exit) {
  cv_signal(&arc_dnlc_evicts_cv);
  cv_wait(&arc_dnlc_evicts_cv, &arc_dnlc_evicts_lock);
 }
 mutex_exit(&arc_dnlc_evicts_lock);

 arc_initialized = B_FALSE;

 if (arc_ksp != ((void*)0)) {
  kstat_delete(arc_ksp);
  arc_ksp = ((void*)0);
 }

 taskq_wait(arc_prune_taskq);
 taskq_destroy(arc_prune_taskq);

 mutex_enter(&arc_prune_mtx);
 while ((p = list_head(&arc_prune_list)) != ((void*)0)) {
  list_remove(&arc_prune_list, p);
  zfs_refcount_remove(&p->p_refcnt, &arc_prune_list);
  zfs_refcount_destroy(&p->p_refcnt);
  kmem_free(p, sizeof (*p));
 }
 mutex_exit(&arc_prune_mtx);

 list_destroy(&arc_prune_list);
 mutex_destroy(&arc_prune_mtx);

 (void) zthr_cancel(arc_adjust_zthr);
 zthr_destroy(arc_adjust_zthr);

 mutex_destroy(&arc_dnlc_evicts_lock);
 cv_destroy(&arc_dnlc_evicts_cv);

 (void) zthr_cancel(arc_reap_zthr);
 zthr_destroy(arc_reap_zthr);

 mutex_destroy(&arc_adjust_lock);
 cv_destroy(&arc_adjust_waiters_cv);






 buf_fini();
 arc_state_fini();

 ASSERT0(arc_loaned_bytes);
}
