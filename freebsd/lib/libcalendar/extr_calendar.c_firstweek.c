
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; int m; scalar_t__ d; } ;
typedef TYPE_1__ date ;


 int ndaysgi (TYPE_1__*) ;
 int weekday (int) ;

__attribute__((used)) static int
firstweek(int y)
{
 date idt;
 int nd, wd;

 idt.y = y - 1;
 idt.m = 10;
 idt.d = 0;

 nd = ndaysgi(&idt);






 if ((wd = weekday(nd)) > 3)
  return (nd - wd + 7);
 else
  return (nd - wd);
}
