
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int refcount; } ;


 int THR_CRITICAL_LEAVE (struct pthread*) ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int _thr_try_gc (struct pthread*,struct pthread*) ;

void
_thr_ref_delete(struct pthread *curthread, struct pthread *thread)
{
 THR_THREAD_LOCK(curthread, thread);
 thread->refcount--;
 _thr_try_gc(curthread, thread);
 THR_CRITICAL_LEAVE(curthread);
}
