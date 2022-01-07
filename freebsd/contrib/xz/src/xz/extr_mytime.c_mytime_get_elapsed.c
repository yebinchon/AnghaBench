
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ mytime_now () ;
 scalar_t__ start_time ;

extern uint64_t
mytime_get_elapsed(void)
{
 return mytime_now() - start_time;
}
