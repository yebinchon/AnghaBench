
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {size_t guardsize_attr; } ;


 int EINVAL ;

int
_thr_attr_setguardsize(pthread_attr_t *attr, size_t guardsize)
{
 int ret;


 if (attr == ((void*)0) || *attr == ((void*)0))
  ret = EINVAL;
 else {

  (*attr)->guardsize_attr = guardsize;
  ret = 0;
 }
 return(ret);
}
