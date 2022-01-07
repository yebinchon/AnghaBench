
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_rwlockattr_t ;
struct TYPE_3__ {int pshared; } ;



int
_pthread_rwlockattr_getpshared(
    const pthread_rwlockattr_t * __restrict rwlockattr,
    int * __restrict pshared)
{

 *pshared = (*rwlockattr)->pshared;
 return (0);
}
