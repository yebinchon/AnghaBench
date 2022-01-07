
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct host_timeval {int tv_sec; } ;


 int host_gettimeofday (struct host_timeval*,int *) ;

time_t
getsecs(void)
{
 struct host_timeval tv;
 host_gettimeofday(&tv, ((void*)0));
 return (tv.tv_sec);
}
