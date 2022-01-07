
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct timespec {int dummy; } ;


 scalar_t__ EINTR ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 scalar_t__ errno ;
 int select (int ,int *,int *,int *,struct timeval*) ;

int
do_select(struct timespec *delay, struct timespec *remain)
{
 int ret;
 struct timeval tv;

 TIMESPEC_TO_TIMEVAL(&tv, delay);
 if (select(0, ((void*)0), ((void*)0), ((void*)0), &tv) == -1)
  ret = (errno == EINTR ? 0 : errno);
 else
  ret = 0;
 return ret;
}
