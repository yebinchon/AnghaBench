
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {scalar_t__ m_protocol; int m_ceiling; } ;


 int EINVAL ;
 scalar_t__ PTHREAD_PRIO_PROTECT ;

int
_pthread_mutexattr_getprioceiling(const pthread_mutexattr_t * __restrict mattr,
    int * __restrict prioceiling)
{
 int ret = 0;

 if (mattr == ((void*)0) || *mattr == ((void*)0))
  ret = EINVAL;
 else if ((*mattr)->m_protocol != PTHREAD_PRIO_PROTECT)
  ret = EINVAL;
 else
  *prioceiling = (*mattr)->m_ceiling;

 return (ret);
}
