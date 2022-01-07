
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int (* scr_move ) (TYPE_1__*,size_t,size_t) ;int (* scr_insertln ) (TYPE_1__*) ;int (* scr_deleteln ) (TYPE_1__*) ;int (* scr_cursor ) (TYPE_1__*,size_t*,size_t*) ;int (* scr_clrtoeol ) (TYPE_1__*) ;} ;
struct TYPE_14__ {TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;


 int F_SET (TYPE_1__*,int ) ;
 scalar_t__ IS_ONELINE (TYPE_1__*) ;
 scalar_t__ IS_VSPLIT (TYPE_1__*) ;
 size_t LASTLINE (TYPE_1__*) ;
 int SC_SCR_REDRAW ;
 int stub1 (TYPE_1__*) ;
 int stub2 (TYPE_1__*,size_t*,size_t*) ;
 int stub3 (TYPE_1__*) ;
 int stub4 (TYPE_1__*,size_t,size_t) ;
 int stub5 (TYPE_1__*) ;
 int stub6 (TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static int
vs_deleteln(SCR *sp, int cnt)
{
 GS *gp;
 size_t oldy, oldx;

 gp = sp->gp;


 if (IS_VSPLIT(sp)) {
  F_SET(sp, SC_SCR_REDRAW);
  return (0);
 }

 if (IS_ONELINE(sp))
  (void)gp->scr_clrtoeol(sp);
 else {
  (void)gp->scr_cursor(sp, &oldy, &oldx);
  while (cnt--) {
   (void)gp->scr_deleteln(sp);
   (void)gp->scr_move(sp, LASTLINE(sp), 0);
   (void)gp->scr_insertln(sp);
   (void)gp->scr_move(sp, oldy, oldx);
  }
 }
 return (0);
}
