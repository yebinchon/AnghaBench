
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int y; int m; int d; } ;
typedef TYPE_1__ date ;


 TYPE_1__* idt2date (TYPE_1__*,TYPE_1__*) ;
 int* month1 ;
 int ndaysji (TYPE_1__*) ;

date *
jdate(int ndays, date *dt)
{
 date idt;
 int r;






 idt.y = ndays / 365;
 idt.m = 0;
 idt.d = 0;
 while ((r = ndaysji(&idt)) > ndays)
  idt.y--;






 r = ndays - r;
 for (idt.m = 11; month1[idt.m] > r; idt.m--)
  ;


 idt.d = r - month1[idt.m];


 return (idt2date(dt, &idt));
}
