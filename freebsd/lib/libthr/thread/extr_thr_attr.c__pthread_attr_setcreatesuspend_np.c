
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int suspend; } ;


 int EINVAL ;
 int THR_CREATE_SUSPENDED ;

int
_pthread_attr_setcreatesuspend_np(pthread_attr_t *attr)
{
 int ret;

 if (attr == ((void*)0) || *attr == ((void*)0)) {
  ret = EINVAL;
 } else {
  (*attr)->suspend = THR_CREATE_SUSPENDED;
  ret = 0;
 }
 return(ret);
}
