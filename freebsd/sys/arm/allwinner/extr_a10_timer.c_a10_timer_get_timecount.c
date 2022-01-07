
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {int * tc_priv; } ;


 scalar_t__ timer_read_counter64 (int *) ;

__attribute__((used)) static u_int
a10_timer_get_timecount(struct timecounter *tc)
{

 if (tc->tc_priv == ((void*)0))
  return (0);

 return ((u_int)timer_read_counter64(tc->tc_priv));
}
