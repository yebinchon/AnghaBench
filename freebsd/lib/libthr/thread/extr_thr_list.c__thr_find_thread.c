
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {scalar_t__ state; } ;


 int EINVAL ;
 int ESRCH ;
 scalar_t__ PS_DEAD ;
 int THREAD_LIST_RDLOCK (struct pthread*) ;
 int THREAD_LIST_UNLOCK (struct pthread*) ;
 int THR_THREAD_LOCK (struct pthread*,struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _thr_hash_find (struct pthread*) ;

int
_thr_find_thread(struct pthread *curthread, struct pthread *thread,
    int include_dead)
{
 struct pthread *pthread;
 int ret;

 if (thread == ((void*)0))
  return (EINVAL);

 ret = 0;
 THREAD_LIST_RDLOCK(curthread);
 pthread = _thr_hash_find(thread);
 if (pthread) {
  THR_THREAD_LOCK(curthread, pthread);
  if (include_dead == 0 && pthread->state == PS_DEAD) {
   THR_THREAD_UNLOCK(curthread, pthread);
   ret = ESRCH;
  }
 } else {
  ret = ESRCH;
 }
 THREAD_LIST_UNLOCK(curthread);
 return (ret);
}
