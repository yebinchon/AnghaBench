
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_15__ ;


typedef int recno_t ;
typedef int lnop_t ;
struct TYPE_21__ {int totalcount; } ;
typedef TYPE_2__ VI_PRIVATE ;
struct TYPE_23__ {size_t t_rows; int lno; TYPE_1__* gp; } ;
struct TYPE_22__ {int lno; } ;
struct TYPE_20__ {int (* scr_move ) (TYPE_4__*,size_t,size_t) ;int (* scr_cursor ) (TYPE_4__*,size_t*,size_t*) ;} ;
struct TYPE_19__ {int lno; } ;
typedef TYPE_3__ SMAP ;
typedef TYPE_4__ SCR ;


 scalar_t__ F_ISSET (TYPE_4__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 TYPE_3__* HMAP ;




 int SC_SCR_EXWROTE ;
 int SC_TINPUT_INFO ;
 TYPE_15__* TMAP ;
 TYPE_2__* VIP (TYPE_4__*) ;
 int VIP_CUR_INVALID ;
 int VIP_N_EX_REDRAW ;
 int VIP_N_REFRESH ;
 int VIP_N_RENUMBER ;
 int VI_SCR_CFLUSH (TYPE_2__*) ;
 int abort () ;
 int db_exist (TYPE_4__*,int) ;
 int stub1 (TYPE_4__*,size_t*,size_t*) ;
 int stub2 (TYPE_4__*,size_t,size_t) ;
 int vs_sm_delete (TYPE_4__*,int) ;
 int vs_sm_insert (TYPE_4__*,int) ;
 int vs_sm_reset (TYPE_4__*,int) ;

int
vs_change(SCR *sp, recno_t lno, lnop_t op)
{
 VI_PRIVATE *vip;
 SMAP *p;
 size_t cnt, oldy, oldx;

 vip = VIP(sp);
 if (((op == 131 && lno == 0) ||
     (op == 129 && lno == 1)) &&
     !db_exist(sp, 2)) {
  lno = 1;
  op = 128;
 }


 if (op == 131) {
  ++lno;
  op = 129;
 }


 if (lno > TMAP->lno)
  return (0);






 if (lno < HMAP->lno) {
  switch (op) {
  case 131:
   abort();

  case 130:
   for (p = HMAP, cnt = sp->t_rows; cnt--; ++p)
    --p->lno;
   if (sp->lno >= lno)
    --sp->lno;
   F_SET(vip, VIP_N_RENUMBER);
   break;
  case 129:
   for (p = HMAP, cnt = sp->t_rows; cnt--; ++p)
    ++p->lno;
   if (sp->lno >= lno)
    ++sp->lno;
   F_SET(vip, VIP_N_RENUMBER);
   break;
  case 128:
   break;
  }
  return (0);
 }

 F_SET(vip, VIP_N_REFRESH);





 VI_SCR_CFLUSH(vip);
 if (sp->lno == lno)
  F_SET(vip, VIP_CUR_INVALID);






 if (!F_ISSET(sp, SC_TINPUT_INFO) &&
     (F_ISSET(sp, SC_SCR_EXWROTE) || VIP(sp)->totalcount > 1)) {
  F_SET(vip, VIP_N_EX_REDRAW);
  return (0);
 }


 (void)sp->gp->scr_cursor(sp, &oldy, &oldx);

 switch (op) {
 case 130:
  if (vs_sm_delete(sp, lno))
   return (1);
  if (sp->lno > lno)
   --sp->lno;
  F_SET(vip, VIP_N_RENUMBER);
  break;
 case 129:
  if (vs_sm_insert(sp, lno))
   return (1);
  if (sp->lno > lno)
   ++sp->lno;
  F_SET(vip, VIP_N_RENUMBER);
  break;
 case 128:
  if (vs_sm_reset(sp, lno))
   return (1);
  break;
 default:
  abort();
 }

 (void)sp->gp->scr_move(sp, oldy, oldx);
 return (0);
}
