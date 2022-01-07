
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int * tcb; } ;


 int DBG_MSG (char*,struct pthread*) ;
 scalar_t__ MAX_CACHED_THREADS ;
 int TAILQ_INSERT_TAIL (int *,struct pthread*,int ) ;
 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 int _tcb_dtor (int *) ;
 int atomic_fetchadd_int (int *,int) ;
 scalar_t__ free_thread_count ;
 int free_thread_lock ;
 int free_threadq ;
 int tcb_lock ;
 int thr_destroy (struct pthread*,struct pthread*) ;
 int tle ;
 int total_threads ;

void
_thr_free(struct pthread *curthread, struct pthread *thread)
{
 DBG_MSG("Freeing thread %p\n", thread);






 if (curthread != ((void*)0)) {
  THR_LOCK_ACQUIRE(curthread, &tcb_lock);
  _tcb_dtor(thread->tcb);
  THR_LOCK_RELEASE(curthread, &tcb_lock);
 } else {
  _tcb_dtor(thread->tcb);
 }
 thread->tcb = ((void*)0);
 if ((curthread == ((void*)0)) || (free_thread_count >= MAX_CACHED_THREADS)) {
  thr_destroy(curthread, thread);
  atomic_fetchadd_int(&total_threads, -1);
 } else {




  THR_LOCK_ACQUIRE(curthread, &free_thread_lock);
  TAILQ_INSERT_TAIL(&free_threadq, thread, tle);
  free_thread_count++;
  THR_LOCK_RELEASE(curthread, &free_thread_lock);
 }
}
