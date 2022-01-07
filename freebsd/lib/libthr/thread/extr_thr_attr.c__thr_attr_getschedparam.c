
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int prio; } ;


 int EINVAL ;

int
_thr_attr_getschedparam(const pthread_attr_t * __restrict attr,
    struct sched_param * __restrict param)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)) || (param == ((void*)0)))
  ret = EINVAL;
 else
  param->sched_priority = (*attr)->prio;

 return(ret);
}
