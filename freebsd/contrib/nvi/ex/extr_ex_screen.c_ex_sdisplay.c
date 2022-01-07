
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int hq; } ;
struct TYPE_12__ {int cols; TYPE_1__* frp; TYPE_3__* gp; } ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;


 int INTERRUPTED (TYPE_2__*) ;
 int M_INFO ;
 TYPE_2__* TAILQ_FIRST (int ) ;
 TYPE_2__* TAILQ_NEXT (TYPE_2__*,int ) ;
 int ex_puts (TYPE_2__*,char*) ;
 int msgq (TYPE_2__*,int ,char*) ;
 int q ;
 int strlen (char*) ;

int
ex_sdisplay(SCR *sp)
{
 GS *gp;
 SCR *tsp;
 int cnt, col, len, sep;

 gp = sp->gp;
 if ((tsp = TAILQ_FIRST(gp->hq)) == ((void*)0)) {
  msgq(sp, M_INFO, "149|No background screens to display");
  return (0);
 }

 col = len = sep = 0;
 for (cnt = 1; tsp != ((void*)0) && !INTERRUPTED(sp);
     tsp = TAILQ_NEXT(tsp, q)) {
  col += len = strlen(tsp->frp->name) + sep;
  if (col >= sp->cols - 1) {
   col = len;
   sep = 0;
   (void)ex_puts(sp, "\n");
  } else if (cnt != 1) {
   sep = 1;
   (void)ex_puts(sp, " ");
  }
  (void)ex_puts(sp, tsp->frp->name);
  ++cnt;
 }
 if (!INTERRUPTED(sp))
  (void)ex_puts(sp, "\n");
 return (0);
}
