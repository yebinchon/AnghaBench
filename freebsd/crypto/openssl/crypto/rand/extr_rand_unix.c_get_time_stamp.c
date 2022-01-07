
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct timeval {int tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;


 int CLOCK_REALTIME ;
 int TWO32TO64 (int ,int ) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int time (int *) ;

__attribute__((used)) static uint64_t get_time_stamp(void)
{
    {
        struct timeval tv;

        if (gettimeofday(&tv, ((void*)0)) == 0)
            return TWO32TO64(tv.tv_sec, tv.tv_usec);
    }

    return time(((void*)0));
}
