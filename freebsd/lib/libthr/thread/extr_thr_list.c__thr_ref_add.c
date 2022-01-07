
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int refcount; } ;


 int EINVAL ;
 int THR_CRITICAL_ENTER (struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 int _thr_find_thread (struct pthread*,struct pthread*,int) ;

int
_thr_ref_add(struct pthread *curthread, struct pthread *thread,
    int include_dead)
{
 int ret;

 if (thread == ((void*)0))

  return (EINVAL);

 if ((ret = _thr_find_thread(curthread, thread, include_dead)) == 0) {
  thread->refcount++;
  THR_CRITICAL_ENTER(curthread);
  THR_THREAD_UNLOCK(curthread, thread);
 }


 return (ret);
}
