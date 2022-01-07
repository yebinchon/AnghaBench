
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int y; } ;
typedef TYPE_1__ date ;


 int firstweek (int) ;
 int gdate (int,TYPE_1__*) ;

int
week(int nd, int *y)
{
 date dt;
 int fw;

 gdate(nd, &dt);
 for (*y = dt.y + 1; nd < (fw = firstweek(*y)); (*y)--)
  ;
 return ((nd - fw) / 7 + 1);
}
