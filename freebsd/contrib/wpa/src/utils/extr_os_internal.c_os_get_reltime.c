
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; int tv_sec; } ;
struct os_reltime {int usec; int sec; } ;


 int gettimeofday (struct timeval*,int *) ;

int os_get_reltime(struct os_reltime *t)
{
 int res;
 struct timeval tv;
 res = gettimeofday(&tv, ((void*)0));
 t->sec = tv.tv_sec;
 t->usec = tv.tv_usec;
 return res;
}
