
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dwLowDateTime; scalar_t__ dwHighDateTime; } ;
typedef TYPE_1__ FILETIME ;


 scalar_t__ FACTOR ;
 int NSPERSEC ;

long
to_time_t (FILETIME * ptr)
{




  long rem;
  long long x = ((long long) ptr->dwHighDateTime << 32) + ((unsigned) ptr->dwLowDateTime);
  x -= FACTOR;
  rem = x % ((long long) NSPERSEC);
  rem += (NSPERSEC / 2);
  x /= (long long) NSPERSEC;
  x += (long long) (rem / NSPERSEC);
  return x;
}
