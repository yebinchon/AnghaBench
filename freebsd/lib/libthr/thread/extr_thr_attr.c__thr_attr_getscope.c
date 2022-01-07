
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int PTHREAD_SCOPE_PROCESS ;
 int PTHREAD_SCOPE_SYSTEM ;

int
_thr_attr_getscope(const pthread_attr_t * __restrict attr,
    int * __restrict contentionscope)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0)) || (contentionscope == ((void*)0)))

  ret = EINVAL;

 else
  *contentionscope = (*attr)->flags & PTHREAD_SCOPE_SYSTEM ?
      PTHREAD_SCOPE_SYSTEM : PTHREAD_SCOPE_PROCESS;

 return(ret);
}
