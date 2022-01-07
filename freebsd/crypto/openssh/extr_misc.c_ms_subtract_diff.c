
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;


 int monotime_tv (struct timeval*) ;
 int timersub (struct timeval*,struct timeval*,struct timeval*) ;

void
ms_subtract_diff(struct timeval *start, int *ms)
{
 struct timeval diff, finish;

 monotime_tv(&finish);
 timersub(&finish, start, &diff);
 *ms -= (diff.tv_sec * 1000) + (diff.tv_usec / 1000);
}
