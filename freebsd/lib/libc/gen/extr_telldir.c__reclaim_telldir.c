
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ddloc_mem {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dd_td; } ;
struct TYPE_4__ {int td_locq; } ;
typedef TYPE_2__ DIR ;


 struct ddloc_mem* LIST_FIRST (int *) ;
 int LIST_INIT (int *) ;
 struct ddloc_mem* LIST_NEXT (struct ddloc_mem*,int ) ;
 int free (struct ddloc_mem*) ;
 int loc_lqe ;

void
_reclaim_telldir(DIR *dirp)
{
 struct ddloc_mem *lp;
 struct ddloc_mem *templp;

 lp = LIST_FIRST(&dirp->dd_td->td_locq);
 while (lp != ((void*)0)) {
  templp = lp;
  lp = LIST_NEXT(lp, loc_lqe);
  free(templp);
 }
 LIST_INIT(&dirp->dd_td->td_locq);
}
