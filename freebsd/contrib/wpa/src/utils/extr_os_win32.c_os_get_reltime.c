
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_time {int usec; int sec; } ;
struct os_reltime {int usec; int sec; } ;


 int os_get_time (struct os_time*) ;

int os_get_reltime(struct os_reltime *t)
{

 struct os_time now;
 int res = os_get_time(&now);
 t->sec = now.sec;
 t->usec = now.usec;
 return res;
}
