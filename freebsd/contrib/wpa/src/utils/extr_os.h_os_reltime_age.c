
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct os_reltime {int dummy; } ;


 int os_get_reltime (struct os_reltime*) ;
 int os_reltime_sub (struct os_reltime*,struct os_reltime*,struct os_reltime*) ;

__attribute__((used)) static inline void os_reltime_age(struct os_reltime *start,
      struct os_reltime *age)
{
 struct os_reltime now;

 os_get_reltime(&now);
 os_reltime_sub(&now, start, age);
}
