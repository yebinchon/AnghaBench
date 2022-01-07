
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int u_long ;
typedef int nbuf ;
typedef int VI_PRIVATE ;
struct TYPE_17__ {int (* scr_move ) (TYPE_2__*,size_t,size_t) ;int (* scr_addstr ) (TYPE_2__*,char*,size_t) ;int (* scr_cursor ) (TYPE_2__*,size_t*,size_t*) ;} ;
struct TYPE_16__ {TYPE_3__* gp; } ;
struct TYPE_15__ {int lno; scalar_t__ coff; int soff; } ;
typedef TYPE_1__ SMAP ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ GS ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 TYPE_1__* HMAP ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_LEFTRIGHT ;
 char* O_NUMBER_FMT ;
 int SC_TINPUT_INFO ;
 TYPE_1__* TMAP ;
 int * VIP (TYPE_2__*) ;
 int db_exist (TYPE_2__*,int) ;
 size_t snprintf (char*,int,char*,int ) ;
 int stub1 (TYPE_2__*,size_t*,size_t*) ;
 int stub2 (TYPE_2__*,int,size_t) ;
 int stub3 (TYPE_2__*,char*,size_t) ;
 int stub4 (TYPE_2__*,size_t,size_t) ;

int
vs_number(SCR *sp)
{
 GS *gp;
 SMAP *smp;
 VI_PRIVATE *vip;
 size_t len, oldy, oldx;
 int exist;
 char nbuf[10];

 gp = sp->gp;
 vip = VIP(sp);


 if (F_ISSET(sp, SC_TINPUT_INFO))
  return (0);
 exist = db_exist(sp, TMAP->lno + 1);

 (void)gp->scr_cursor(sp, &oldy, &oldx);
 for (smp = HMAP; smp <= TMAP; ++smp) {

  if (O_ISSET(sp, O_LEFTRIGHT)) {
   if (smp->coff != 0)
    continue;
  } else
   if (smp->soff != 1)
    continue;





  if (smp->lno != 1 && !exist && !db_exist(sp, smp->lno))
   break;

  (void)gp->scr_move(sp, smp - HMAP, 0);
  len = snprintf(nbuf, sizeof(nbuf), O_NUMBER_FMT, (u_long)smp->lno);
  (void)gp->scr_addstr(sp, nbuf, len);
 }
 (void)gp->scr_move(sp, oldy, oldx);
 return (0);
}
