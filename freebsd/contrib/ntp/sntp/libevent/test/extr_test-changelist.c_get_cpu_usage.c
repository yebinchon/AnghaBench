
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {double tv_sec; double tv_usec; } ;
struct cpu_usage_timer {double ticksBegin; int timeBegin; int kerneltimeBegin; int usertimeBegin; int thread; } ;
typedef double clock_t ;
typedef int FILETIME ;


 scalar_t__ CLOCKS_PER_SEC ;
 int GetThreadTimes (int ,int *,int *,int *,int *) ;
 double clock () ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 int evutil_timersub (struct timeval*,int *,struct timeval*) ;
 double filetime_diff (int *,int *) ;
 int printf (char*) ;

__attribute__((used)) static void
get_cpu_usage(struct cpu_usage_timer *timer, double *secElapsedOut,
    double *secUsedOut, double *usageOut)
{





 clock_t ticksEnd;

 struct timeval timeEnd, timeDiff;
 double secondsPassed, secondsUsed;
 ticksEnd = clock();
 secondsUsed = (ticksEnd - timer->ticksBegin) / (double)CLOCKS_PER_SEC;

 evutil_gettimeofday(&timeEnd, ((void*)0));
 evutil_timersub(&timeEnd, &timer->timeBegin, &timeDiff);
 secondsPassed = timeDiff.tv_sec + (timeDiff.tv_usec / 1.0e6);

 *secElapsedOut = secondsPassed;
 *secUsedOut = secondsUsed;
 *usageOut = secondsUsed / secondsPassed;
}
