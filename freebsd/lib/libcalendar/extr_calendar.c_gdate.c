
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int y; int m; int d; } ;
typedef TYPE_1__ date ;
struct TYPE_10__ {int y; size_t m; int d; } ;


 TYPE_1__* idt2date (TYPE_1__*,TYPE_1__*) ;
 TYPE_3__ jiswitch ;
 int* month1 ;
 int* month1s ;
 int ndaysgi (TYPE_1__*) ;

date *
gdate(int ndays, date *dt)
{
 int const *montht;
 date idt;
 int r;






 idt.y = ndays / 365;
 idt.m = 0;
 idt.d = 0;
 while ((r = ndaysgi(&idt)) > ndays)
  idt.y--;
 ndays = ndays - r;
 if (idt.y == 1582)
  montht = month1s;
 else
  montht = month1;

 for (idt.m = 11; montht[idt.m] > ndays; idt.m--)
  ;

 idt.d = ndays - montht[idt.m];


 if (idt.y == jiswitch.y && idt.m == jiswitch.m && jiswitch.d < idt.d)
  idt.d += 10;


 return (idt2date(dt, &idt));
}
