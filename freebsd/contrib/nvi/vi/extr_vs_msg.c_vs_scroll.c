
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ sw_t ;
struct TYPE_15__ {scalar_t__ totalcount; scalar_t__ linecount; } ;
typedef TYPE_1__ VI_PRIVATE ;
struct TYPE_17__ {int (* scr_insertln ) (TYPE_2__*) ;int (* scr_move ) (TYPE_2__*,scalar_t__,int ) ;int (* scr_deleteln ) (TYPE_2__*) ;} ;
struct TYPE_16__ {scalar_t__ rows; scalar_t__ t_maxrows; TYPE_3__* gp; } ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;


 int IS_ONELINE (TYPE_2__*) ;
 scalar_t__ LASTLINE (TYPE_2__*) ;
 scalar_t__ SCROLL_W_QUIT ;
 int * TAILQ_NEXT (TYPE_2__*,int ) ;
 TYPE_1__* VIP (TYPE_2__*) ;
 int q ;
 int stub1 (TYPE_2__*,scalar_t__,int ) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (TYPE_2__*,scalar_t__,int ) ;
 int stub4 (TYPE_2__*) ;
 int vs_wait (TYPE_2__*,int*,scalar_t__) ;

__attribute__((used)) static void
vs_scroll(SCR *sp, int *continuep, sw_t wtype)
{
 GS *gp;
 VI_PRIVATE *vip;

 gp = sp->gp;
 vip = VIP(sp);
 if (!IS_ONELINE(sp)) {





  (void)gp->scr_move(sp, vip->totalcount <
      sp->rows ? LASTLINE(sp) - vip->totalcount : 0, 0);
  (void)gp->scr_deleteln(sp);


  if (TAILQ_NEXT(sp, q) != ((void*)0)) {
   (void)gp->scr_move(sp, LASTLINE(sp), 0);
   (void)gp->scr_insertln(sp);
  }
 }
 if (wtype == SCROLL_W_QUIT && vip->linecount < sp->t_maxrows)
  return;
 vs_wait(sp, continuep, wtype);
}
