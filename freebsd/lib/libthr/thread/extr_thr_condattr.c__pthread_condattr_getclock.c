
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_condattr_t ;
typedef int clockid_t ;
struct TYPE_3__ {int c_clockid; } ;


 int EINVAL ;

int
_pthread_condattr_getclock(const pthread_condattr_t * __restrict attr,
    clockid_t * __restrict clock_id)
{
 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);
 *clock_id = (*attr)->c_clockid;
 return (0);
}
