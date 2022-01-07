
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int d; int m; int y; } ;
typedef TYPE_1__ date ;


 int ndaysj (TYPE_1__*) ;
 size_t weekday (int) ;

__attribute__((used)) static int
easterodn(int y)
{





 int mc[] = {5, 25, 13, 2, 22, 10, 30, 18, 7, 27, 15, 4,
      24, 12, 1, 21, 9, 29, 17};


 int ns[] = {6, 5, 4, 3, 2, 1, 7};
 date dt;
 int dn;


 dt.d = mc[y % 19];

 if (dt.d < 21)
  dt.m = 4;
 else
  dt.m = 3;

 dt.y = y;


 dn = ndaysj(&dt);
 return (dn + ns[weekday(dn)]);
}
