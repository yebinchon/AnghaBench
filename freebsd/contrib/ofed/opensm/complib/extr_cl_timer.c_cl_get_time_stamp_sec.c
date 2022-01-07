
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

uint32_t cl_get_time_stamp_sec(void)
{
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));

 return (tv.tv_sec);
}
