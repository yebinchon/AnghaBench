
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mbdb_terminate ) () ;} ;


 TYPE_1__* SmMbdbType ;
 int stub1 () ;

void
sm_mbdb_terminate()
{
 if (SmMbdbType->mbdb_terminate != ((void*)0))
  SmMbdbType->mbdb_terminate();
}
