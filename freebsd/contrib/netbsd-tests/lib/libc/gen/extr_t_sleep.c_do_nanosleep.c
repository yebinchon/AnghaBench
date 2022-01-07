
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int nanosleep (struct timespec*,struct timespec*) ;

int
do_nanosleep(struct timespec *delay, struct timespec *remain)
{
 int ret;

 if (nanosleep(delay, remain) == -1)
  ret = (errno == EINTR ? 0 : errno);
 else
  ret = 0;
 return ret;
}
