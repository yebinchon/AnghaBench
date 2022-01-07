
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ date ;


 int ndaysgi (TYPE_1__*) ;

int
weekday(int nd)
{
 date dmondaygi = {1997, 8, 16};
 static int nmonday;


 if (nmonday == 0)
  nmonday = ndaysgi(&dmondaygi);


 nd = (nd - nmonday) % 7;
 if (nd < 0)
  return (nd + 7);
 else
  return (nd);
}
