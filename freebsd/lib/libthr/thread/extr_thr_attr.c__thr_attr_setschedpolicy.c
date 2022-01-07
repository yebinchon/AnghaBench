
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_5__ {int pri_default; } ;
struct TYPE_4__ {int sched_policy; int prio; } ;


 int EINVAL ;
 int ENOTSUP ;
 int SCHED_FIFO ;
 int SCHED_RR ;
 TYPE_2__* _thr_priorities ;

int
_thr_attr_setschedpolicy(pthread_attr_t *attr, int policy)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)))
  ret = EINVAL;
 else if ((policy < SCHED_FIFO) || (policy > SCHED_RR)) {
  ret = ENOTSUP;
 } else {
  (*attr)->sched_policy = policy;
  (*attr)->prio = _thr_priorities[policy-1].pri_default;
 }
 return(ret);
}
