
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
struct TYPE_2__ {int sched_policy; int prio; } ;
struct pthread {TYPE_1__ attr; } ;
typedef struct pthread* pthread_t ;


 int EINVAL ;
 int THR_LOCK (struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,struct pthread*,int ) ;

int
_pthread_getschedparam(pthread_t pthread, int * __restrict policy,
    struct sched_param * __restrict param)
{
 struct pthread *curthread = _get_curthread();
 int ret = 0;

 if (policy == ((void*)0) || param == ((void*)0))
  return (EINVAL);





 if (pthread == curthread)
  THR_LOCK(curthread);
 else if ((ret = _thr_find_thread(curthread, pthread, 0)))
  return (ret);
 *policy = pthread->attr.sched_policy;
 param->sched_priority = pthread->attr.prio;
 THR_THREAD_UNLOCK(curthread, pthread);
 return (ret);
}
