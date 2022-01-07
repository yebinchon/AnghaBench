
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_usage_timer {int timeBegin; int ticksBegin; int kerneltimeBegin; int usertimeBegin; int thread; } ;
typedef int FILETIME ;


 int GetCurrentThread () ;
 int GetThreadTimes (int ,int *,int *,int *,int *) ;
 int clock () ;
 int evutil_gettimeofday (int *,int *) ;
 int printf (char*) ;

__attribute__((used)) static void
start_cpu_usage_timer(struct cpu_usage_timer *timer)
{
 timer->ticksBegin = clock();


 evutil_gettimeofday(&timer->timeBegin, ((void*)0));
}
