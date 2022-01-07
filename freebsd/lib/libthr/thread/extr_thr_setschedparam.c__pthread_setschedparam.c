
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_param {scalar_t__ sched_priority; } ;
struct TYPE_2__ {int sched_policy; scalar_t__ prio; } ;
struct pthread {TYPE_1__ attr; int tid; } ;
typedef struct pthread* pthread_t ;


 int SCHED_OTHER ;
 int THR_LOCK (struct pthread*) ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,struct pthread*,int ) ;
 int _thr_setscheduler (int ,int,struct sched_param const*) ;
 int errno ;

int
_pthread_setschedparam(pthread_t pthread, int policy,
 const struct sched_param *param)
{
 struct pthread *curthread = _get_curthread();
 int ret;

 if (pthread == curthread)
  THR_LOCK(curthread);
 else if ((ret = _thr_find_thread(curthread, pthread,
                   0)) != 0)
  return (ret);
 if (pthread->attr.sched_policy == policy &&
     (policy == SCHED_OTHER ||
      pthread->attr.prio == param->sched_priority)) {
  pthread->attr.prio = param->sched_priority;
  THR_THREAD_UNLOCK(curthread, pthread);
  return (0);
 }
 ret = _thr_setscheduler(pthread->tid, policy, param);
 if (ret == -1)
  ret = errno;
 else {
  pthread->attr.sched_policy = policy;
  pthread->attr.prio = param->sched_priority;
 }
 THR_THREAD_UNLOCK(curthread, pthread);
 return (ret);
}
