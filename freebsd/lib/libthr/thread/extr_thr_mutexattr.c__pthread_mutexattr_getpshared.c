
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_mutexattr_t ;
struct TYPE_3__ {int m_pshared; } ;


 int EINVAL ;

int
_pthread_mutexattr_getpshared(const pthread_mutexattr_t *attr,
 int *pshared)
{

 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);
 *pshared = (*attr)->m_pshared;
 return (0);
}
