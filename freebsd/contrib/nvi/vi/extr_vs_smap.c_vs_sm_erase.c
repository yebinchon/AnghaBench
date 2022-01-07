
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int (* scr_clrtoeol ) (TYPE_1__*) ;int (* scr_move ) (TYPE_1__*,scalar_t__,int ) ;} ;
struct TYPE_9__ {scalar_t__ t_rows; scalar_t__ t_minrows; TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;


 scalar_t__ HMAP ;
 scalar_t__ LASTLINE (TYPE_1__*) ;
 scalar_t__ TMAP ;
 int stub1 (TYPE_1__*,scalar_t__,int ) ;
 int stub2 (TYPE_1__*) ;
 int stub3 (TYPE_1__*,scalar_t__,int ) ;
 int stub4 (TYPE_1__*) ;

__attribute__((used)) static int
vs_sm_erase(SCR *sp)
{
 GS *gp;

 gp = sp->gp;
 (void)gp->scr_move(sp, LASTLINE(sp), 0);
 (void)gp->scr_clrtoeol(sp);
 for (; sp->t_rows > sp->t_minrows; --sp->t_rows, --TMAP) {
  (void)gp->scr_move(sp, TMAP - HMAP, 0);
  (void)gp->scr_clrtoeol(sp);
 }
 return (0);
}
