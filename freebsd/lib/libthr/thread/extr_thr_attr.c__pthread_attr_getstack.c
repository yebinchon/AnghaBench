
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {size_t stacksize_attr; void* stackaddr_attr; } ;


 int EINVAL ;

int
_pthread_attr_getstack(const pthread_attr_t * __restrict attr,
    void ** __restrict stackaddr, size_t * __restrict stacksize)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0) || stackaddr == ((void*)0)
     || stacksize == ((void*)0) )
  ret = EINVAL;
 else {

  *stackaddr = (*attr)->stackaddr_attr;
  *stacksize = (*attr)->stacksize_attr;
  ret = 0;
 }
 return(ret);
}
