
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlockattr_t ;
struct TYPE_3__ {int pshared; } ;


 int EINVAL ;
 int PTHREAD_PROCESS_PRIVATE ;
 int PTHREAD_PROCESS_SHARED ;

int
_pthread_rwlockattr_setpshared(pthread_rwlockattr_t *rwlockattr, int pshared)
{

 if (pshared != PTHREAD_PROCESS_PRIVATE &&
     pshared != PTHREAD_PROCESS_SHARED)
  return (EINVAL);
 (*rwlockattr)->pshared = pshared;
 return (0);
}
