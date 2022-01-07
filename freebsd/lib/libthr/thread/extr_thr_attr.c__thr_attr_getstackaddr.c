
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {void* stackaddr_attr; } ;


 int EINVAL ;

int
_thr_attr_getstackaddr(const pthread_attr_t *attr, void **stackaddr)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0) || stackaddr == ((void*)0))
  ret = EINVAL;
 else {

  *stackaddr = (*attr)->stackaddr_attr;
  ret = 0;
 }
 return(ret);
}
