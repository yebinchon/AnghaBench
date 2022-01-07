
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_needed ;
 scalar_t__ mytime_now () ;
 scalar_t__ next_flush ;
 scalar_t__ opt_flush_timeout ;
 scalar_t__ start_time ;

extern void
mytime_set_start_time(void)
{
 start_time = mytime_now();
 next_flush = start_time + opt_flush_timeout;
 flush_needed = 0;
 return;
}
