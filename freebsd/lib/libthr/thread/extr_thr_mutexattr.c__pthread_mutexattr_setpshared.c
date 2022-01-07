
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_pshared; } ;


 int EINVAL ;
 int PTHREAD_PROCESS_PRIVATE ;
 int PTHREAD_PROCESS_SHARED ;

int
_pthread_mutexattr_setpshared(pthread_mutexattr_t *attr, int pshared)
{

 if (attr == ((void*)0) || *attr == ((void*)0) ||
     (pshared != PTHREAD_PROCESS_PRIVATE &&
     pshared != PTHREAD_PROCESS_SHARED))
  return (EINVAL);
 (*attr)->m_pshared = pshared;
 return (0);
}
