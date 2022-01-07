
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reltime {int sec; int usec; } ;


 int os_get_reltime (struct os_reltime*) ;
 int os_reltime_sub (struct os_reltime*,struct os_reltime*,struct os_reltime*) ;

__attribute__((used)) static int ms_from_time(struct os_reltime *last)
{
 struct os_reltime now, res;

 os_get_reltime(&now);
 os_reltime_sub(&now, last, &res);
 return res.sec * 1000 + res.usec / 1000;
}
