
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct logininfo {int tv_usec; int tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

void
login_set_current_time(struct logininfo *li)
{
 struct timeval tv;

 gettimeofday(&tv, ((void*)0));

 li->tv_sec = tv.tv_sec;
 li->tv_usec = tv.tv_usec;
}
