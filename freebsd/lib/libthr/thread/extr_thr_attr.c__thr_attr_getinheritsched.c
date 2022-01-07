
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int sched_inherit; } ;


 int EINVAL ;

int
_thr_attr_getinheritsched(const pthread_attr_t * __restrict attr,
    int * __restrict sched_inherit)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)))
  ret = EINVAL;
 else
  *sched_inherit = (*attr)->sched_inherit;

 return(ret);
}
