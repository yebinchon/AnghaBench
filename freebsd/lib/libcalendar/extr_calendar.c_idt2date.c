
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m; scalar_t__ y; scalar_t__ d; } ;
typedef TYPE_1__ date ;



__attribute__((used)) static date *
idt2date(date *dt, date *idt)
{

 dt->d = idt->d + 1;
 if (idt->m < 10) {
  dt->m = idt->m + 3;
  dt->y = idt->y;
 } else {
  dt->m = idt->m - 9;
  dt->y = idt->y + 1;
 }
 if (dt->m < 1)
  return (((void*)0));
 else
  return (dt);
}
