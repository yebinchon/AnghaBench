
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int m; scalar_t__ y; scalar_t__ d; } ;
typedef TYPE_1__ date ;



__attribute__((used)) static date *
date2idt(date *idt, date *dt)
{

 idt->d = dt->d - 1;
 if (dt->m > 2) {
  idt->m = dt->m - 3;
  idt->y = dt->y;
 } else {
  idt->m = dt->m + 9;
  idt->y = dt->y - 1;
 }
 if (idt->m < 0 || idt->m > 11 || idt->y < 0)
  return (((void*)0));
 else
  return idt;
}
