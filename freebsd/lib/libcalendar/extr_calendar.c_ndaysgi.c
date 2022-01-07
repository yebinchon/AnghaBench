
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; } ;
typedef TYPE_1__ date ;


 TYPE_1__ jiswitch ;
 int ndaysji (TYPE_1__*) ;
 int nswitch ;

__attribute__((used)) static int
ndaysgi(date *idt)
{
 int nd;


 if (nswitch == 0)
  nswitch = ndaysji(&jiswitch);
 if ((nd = ndaysji(idt)) == -1)
  return (-1);
 if (idt->y >= 1600)
  nd = (nd - 10 - (idt->y - 1600) / 100 + (idt->y - 1600) / 400);
 else if (nd > nswitch)
  nd -= 10;
 return (nd);
}
