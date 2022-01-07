
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_robust; } ;


 int EINVAL ;

int
_thr_mutexattr_getrobust(pthread_mutexattr_t *mattr, int *robust)
{
 int ret;

 if (mattr == ((void*)0) || *mattr == ((void*)0)) {
  ret = EINVAL;
 } else {
  ret = 0;
  *robust = (*mattr)->m_robust;
 }
 return (ret);
}
