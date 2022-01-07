
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_needed ;
 scalar_t__ mytime_now () ;
 scalar_t__ next_flush ;
 scalar_t__ opt_flush_timeout ;

extern void
mytime_set_flush_time(void)
{
 next_flush = mytime_now() + opt_flush_timeout;
 flush_needed = 0;
 return;
}
