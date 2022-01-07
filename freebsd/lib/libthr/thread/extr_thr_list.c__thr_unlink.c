
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int THREAD_LIST_UNLOCK (struct pthread*) ;
 int THREAD_LIST_WRLOCK (struct pthread*) ;
 int THR_LIST_REMOVE (struct pthread*) ;
 int _thread_active_threads ;
 int atomic_add_int (int *,int) ;

void
_thr_unlink(struct pthread *curthread, struct pthread *thread)
{
 THREAD_LIST_WRLOCK(curthread);
 THR_LIST_REMOVE(thread);
 THREAD_LIST_UNLOCK(curthread);
 atomic_add_int(&_thread_active_threads, -1);
}
