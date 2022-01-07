
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 int nanosleep (struct timespec const*,struct timespec*) ;

int
thrd_sleep(const struct timespec *duration, struct timespec *remaining)
{

 return (nanosleep(duration, remaining));
}
