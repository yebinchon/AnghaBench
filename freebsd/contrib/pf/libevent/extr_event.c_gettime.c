
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static int
gettime(struct timeval *tp)
{
 gettimeofday(tp, ((void*)0));


 return (0);
}
