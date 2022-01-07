
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddloc_mem {long loc_loc; long loc_seek; } ;
struct TYPE_5__ {long dd_seek; long dd_loc; TYPE_1__* dd_td; } ;
struct TYPE_4__ {int td_locq; } ;
typedef TYPE_2__ DIR ;


 struct ddloc_mem* LIST_FIRST (int *) ;

void
_fixtelldir(DIR *dirp, long oldseek, long oldloc)
{
 struct ddloc_mem *lp;

 lp = LIST_FIRST(&dirp->dd_td->td_locq);
 if (lp != ((void*)0)) {
  if (lp->loc_loc == oldloc &&
      lp->loc_seek == oldseek) {
   lp->loc_seek = dirp->dd_seek;
   lp->loc_loc = dirp->dd_loc;
  }
 }
}
