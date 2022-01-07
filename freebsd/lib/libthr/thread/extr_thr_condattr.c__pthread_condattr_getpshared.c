
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_condattr_t ;
struct TYPE_3__ {int c_pshared; } ;


 int EINVAL ;

int
_pthread_condattr_getpshared(const pthread_condattr_t * __restrict attr,
    int * __restrict pshared)
{

 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);
 *pshared = (*attr)->c_pshared;
 return (0);
}
