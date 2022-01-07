
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int sched_inherit; } ;


 int EINVAL ;
 int ENOTSUP ;
 int PTHREAD_EXPLICIT_SCHED ;
 int PTHREAD_INHERIT_SCHED ;

int
_thr_attr_setinheritsched(pthread_attr_t *attr, int sched_inherit)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)))
  ret = EINVAL;
 else if (sched_inherit != PTHREAD_INHERIT_SCHED &&
   sched_inherit != PTHREAD_EXPLICIT_SCHED)
  ret = ENOTSUP;
 else
  (*attr)->sched_inherit = sched_inherit;

 return(ret);
}
