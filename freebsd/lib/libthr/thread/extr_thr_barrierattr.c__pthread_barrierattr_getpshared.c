
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_barrierattr_t ;
struct TYPE_3__ {int pshared; } ;


 int EINVAL ;

int
_pthread_barrierattr_getpshared(const pthread_barrierattr_t * __restrict attr,
    int * __restrict pshared)
{

 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);

 *pshared = (*attr)->pshared;
 return (0);
}
