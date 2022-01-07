
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {size_t stacksize_attr; } ;


 int EINVAL ;
 size_t PTHREAD_STACK_MIN ;

int
_thr_attr_setstacksize(pthread_attr_t *attr, size_t stacksize)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0) || stacksize < PTHREAD_STACK_MIN)
  ret = EINVAL;
 else {

  (*attr)->stacksize_attr = stacksize;
  ret = 0;
 }
 return(ret);
}
