
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int sched_policy; } ;


 int EINVAL ;

int
_thr_attr_getschedpolicy(const pthread_attr_t * __restrict attr,
    int * __restrict policy)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)) || (policy == ((void*)0)))
  ret = EINVAL;
 else
  *policy = (*attr)->sched_policy;

 return(ret);
}
