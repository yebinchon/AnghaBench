
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_condattr_t ;
typedef scalar_t__ clockid_t ;
struct TYPE_3__ {scalar_t__ c_clockid; } ;


 scalar_t__ CLOCK_MONOTONIC ;
 scalar_t__ CLOCK_PROF ;
 scalar_t__ CLOCK_REALTIME ;
 scalar_t__ CLOCK_VIRTUAL ;
 int EINVAL ;

int
_pthread_condattr_setclock(pthread_condattr_t *attr, clockid_t clock_id)
{
 if (attr == ((void*)0) || *attr == ((void*)0))
  return (EINVAL);
 if (clock_id != CLOCK_REALTIME &&
     clock_id != CLOCK_VIRTUAL &&
     clock_id != CLOCK_PROF &&
     clock_id != CLOCK_MONOTONIC) {
  return (EINVAL);
 }
 (*attr)->c_clockid = clock_id;
 return (0);
}
