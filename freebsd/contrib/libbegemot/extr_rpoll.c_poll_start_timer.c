
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int timer_f ;


 int poll_start_utimer (unsigned long long,int,int ,void*) ;

int
poll_start_timer(u_int msecs, int repeat, timer_f func, void *arg)
{
 return (poll_start_utimer((unsigned long long)msecs * 1000,
     repeat, func, arg));
}
