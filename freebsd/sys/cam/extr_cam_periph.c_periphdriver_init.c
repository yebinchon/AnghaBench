
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int (* init ) () ;} ;


 int CAM_PERIPH_DRV_EARLY ;
 int initialized ;
 int max (int,int) ;
 TYPE_1__** periph_drivers ;
 int stub1 () ;

void
periphdriver_init(int level)
{
 int i, early;

 initialized = max(initialized, level);
 for (i = 0; periph_drivers[i] != ((void*)0); i++) {
  early = (periph_drivers[i]->flags & CAM_PERIPH_DRV_EARLY) ? 1 : 2;
  if (early == initialized)
   (*periph_drivers[i]->init)();
 }
}
