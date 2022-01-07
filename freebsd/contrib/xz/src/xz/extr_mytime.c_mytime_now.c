
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int clockid_t ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int UINT64_C (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static uint64_t
mytime_now(void)
{
 struct timeval tv;
 gettimeofday(&tv, ((void*)0));
 return (uint64_t)(tv.tv_sec) * UINT64_C(1000) + tv.tv_usec / 1000;

}
