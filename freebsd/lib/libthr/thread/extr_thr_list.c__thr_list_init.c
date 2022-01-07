
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_QUEUES ;
 int LIST_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 scalar_t__ _gc_count ;
 int _thr_list_lock ;
 int _thr_umutex_init (int *) ;
 int _thr_urwlock_init (int *) ;
 int _thread_list ;
 int free_thread_lock ;
 int free_threadq ;
 int inited ;
 int tcb_lock ;
 int * thr_hashtable ;
 int total_threads ;

void
_thr_list_init(void)
{
 int i;

 _gc_count = 0;
 total_threads = 1;
 _thr_urwlock_init(&_thr_list_lock);
 TAILQ_INIT(&_thread_list);
 TAILQ_INIT(&free_threadq);
 _thr_umutex_init(&free_thread_lock);
 _thr_umutex_init(&tcb_lock);
 if (inited) {
  for (i = 0; i < HASH_QUEUES; ++i)
   LIST_INIT(&thr_hashtable[i]);
 }
 inited = 1;
}
