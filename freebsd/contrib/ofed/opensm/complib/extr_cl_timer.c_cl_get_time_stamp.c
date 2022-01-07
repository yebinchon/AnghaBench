
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

uint64_t cl_get_time_stamp(void)
{
 uint64_t tstamp;
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));


 tstamp = ((uint64_t) tv.tv_sec * 1000000) + (uint64_t) tv.tv_usec;

 return (tstamp);
}
