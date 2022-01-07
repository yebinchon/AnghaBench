
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ const INT_MAX ;
 scalar_t__ MODE_COMPRESS ;
 scalar_t__ mytime_now () ;
 scalar_t__ const next_flush ;
 scalar_t__ opt_flush_timeout ;
 scalar_t__ opt_mode ;

extern int
mytime_get_flush_timeout(void)
{
 if (opt_flush_timeout == 0 || opt_mode != MODE_COMPRESS)
  return -1;

 const uint64_t now = mytime_now();
 if (now >= next_flush)
  return 0;

 const uint64_t remaining = next_flush - now;
 return remaining > INT_MAX ? INT_MAX : (int)remaining;
}
