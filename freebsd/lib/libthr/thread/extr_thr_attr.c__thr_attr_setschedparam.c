
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sched_param {scalar_t__ sched_priority; } ;
typedef TYPE_1__* pthread_attr_t ;
struct TYPE_5__ {scalar_t__ pri_min; scalar_t__ pri_max; } ;
struct TYPE_4__ {int sched_policy; scalar_t__ prio; } ;


 int EINVAL ;
 int ENOTSUP ;
 int SCHED_FIFO ;
 int SCHED_RR ;
 TYPE_2__* _thr_priorities ;

int
_thr_attr_setschedparam(pthread_attr_t * __restrict attr,
    const struct sched_param * __restrict param)
{
 int policy;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)))
  return (EINVAL);

 if (param == ((void*)0))
  return (ENOTSUP);

 policy = (*attr)->sched_policy;

 if (policy == SCHED_FIFO || policy == SCHED_RR) {
  if (param->sched_priority < _thr_priorities[policy-1].pri_min ||
      param->sched_priority > _thr_priorities[policy-1].pri_max)
  return (ENOTSUP);
 } else {





 }

 (*attr)->prio = param->sched_priority;

 return (0);
}
