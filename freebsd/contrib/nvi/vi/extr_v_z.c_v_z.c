
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int recno_t ;
typedef int e_key_t ;
struct TYPE_23__ {int lno; int cno; } ;
struct TYPE_19__ {int cno; int lno; } ;
struct TYPE_21__ {scalar_t__ count2; int character; TYPE_2__* kp; TYPE_6__ m_final; TYPE_1__ m_start; int count; } ;
typedef TYPE_3__ VICMD ;
struct TYPE_22__ {int t_rows; } ;
struct TYPE_20__ {int usage; } ;
typedef TYPE_4__ SCR ;


 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int KEY_VAL (TYPE_4__*,int) ;
 int K_CR ;
 int K_NL ;
 scalar_t__ O_VAL (TYPE_4__*,int ) ;
 int O_WINDOW ;
 int P_BOTTOM ;
 int P_MIDDLE ;
 int P_TOP ;
 int VC_C1SET ;
 int VC_C2SET ;
 int VIM_USAGE ;
 int Z_CARAT ;
 int Z_PLUS ;
 int db_exist (TYPE_4__*,int ) ;
 scalar_t__ db_last (TYPE_4__*,int *) ;
 int v_emsg (TYPE_4__*,int ,int ) ;
 scalar_t__ vs_crel (TYPE_4__*,scalar_t__) ;
 int vs_sm_fill (TYPE_4__*,int ,int ) ;
 int vs_sm_position (TYPE_4__*,TYPE_6__*,int ,int ) ;
 int vs_sm_scroll (TYPE_4__*,TYPE_6__*,int ,int ) ;

int
v_z(SCR *sp, VICMD *vp)
{
 recno_t lno;
 e_key_t value;





 if (F_ISSET(vp, VC_C1SET)) {
  lno = vp->count;
  if (!db_exist(sp, lno) && db_last(sp, &lno))
   return (1);
 } else
  lno = vp->m_start.lno;


 vp->m_final.lno = lno;
 vp->m_final.cno = vp->m_start.cno;
 if (F_ISSET(vp, VC_C2SET) && vp->count2 != 0) {
  if (vp->count2 > O_VAL(sp, O_WINDOW))
   vp->count2 = O_VAL(sp, O_WINDOW);
  if (vs_crel(sp, vp->count2))
   return (1);
 }

 switch (vp->character) {
 case '-':
  if (vs_sm_fill(sp, lno, P_BOTTOM))
   return (1);
  break;
 case '.':
  if (vs_sm_fill(sp, lno, P_MIDDLE))
   return (1);
  break;
 case '+':





  if (F_ISSET(vp, VC_C1SET)) {
   if (vs_sm_fill(sp, lno, P_TOP))
    return (1);
   if (vs_sm_position(sp, &vp->m_final, 0, P_TOP))
    return (1);
  } else
   if (vs_sm_scroll(sp, &vp->m_final, sp->t_rows, Z_PLUS))
    return (1);
  break;
 case '^':
  if (F_ISSET(vp, VC_C1SET)) {
   if (vs_sm_fill(sp, lno, P_BOTTOM))
    return (1);
   if (vs_sm_position(sp, &vp->m_final, 0, P_TOP))
    return (1);
   if (vs_sm_fill(sp, vp->m_final.lno, P_BOTTOM))
    return (1);
  } else
   if (vs_sm_scroll(sp, &vp->m_final, sp->t_rows, Z_CARAT))
    return (1);
  break;
 default:
  value = KEY_VAL(sp, vp->character);
  if (value != K_CR && value != K_NL) {
   v_emsg(sp, vp->kp->usage, VIM_USAGE);
   return (1);
  }
  if (vs_sm_fill(sp, lno, P_TOP))
   return (1);
  break;
 }
 return (0);
}
