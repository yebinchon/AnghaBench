
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_long ;
typedef int recno_t ;
struct TYPE_15__ {int lno; size_t cno; } ;
struct TYPE_14__ {int lno; size_t cno; } ;
struct TYPE_16__ {int count; TYPE_2__ m_stop; TYPE_2__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_3__ VICMD ;
struct TYPE_17__ {int cs_lno; size_t cs_cno; scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_4__ VCS ;
typedef int SCR ;


 scalar_t__ CS_EMP ;
 scalar_t__ CS_EOL ;
 scalar_t__ CS_SOF ;
 int DBG_FATAL ;
 scalar_t__ F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 scalar_t__ ISMOTION (TYPE_3__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 scalar_t__ cs_bblank (int *,TYPE_4__*) ;
 int cs_fblank (int *,TYPE_4__*) ;
 scalar_t__ cs_init (int *,TYPE_4__*) ;
 int cs_next (int *,TYPE_4__*) ;
 scalar_t__ cs_prev (int *,TYPE_4__*) ;
 scalar_t__ db_get (int *,int,int ,int *,size_t*) ;
 scalar_t__ isblank (int) ;

int
v_sentenceb(SCR *sp, VICMD *vp)
{
 VCS cs;
 recno_t slno;
 size_t len, scno;
 u_long cnt;
 int last;





 if (vp->m_start.lno == 1 && vp->m_start.cno == 0)
  return (0);

 cs.cs_lno = vp->m_start.lno;
 cs.cs_cno = vp->m_start.cno;
 if (cs_init(sp, &cs))
  return (1);

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;
 if (cs.cs_flags == CS_EMP) {
  if (cs_bblank(sp, &cs))
   return (1);
  for (;;) {
   if (cs_prev(sp, &cs))
    return (1);
   if (cs.cs_flags != CS_EOL)
    break;
  }
 } else if (cs.cs_flags == 0 && !isblank(cs.cs_ch))
  for (;;) {
   if (cs_prev(sp, &cs))
    return (1);
   if (cs.cs_flags != 0 || isblank(cs.cs_ch))
    break;
  }

 for (last = 0;;) {
  if (cs_prev(sp, &cs))
   return (1);
  if (cs.cs_flags == CS_SOF)
   break;
  if (cs.cs_flags == CS_EOL) {
   last = 1;
   continue;
  }
  if (cs.cs_flags == CS_EMP) {
   if (--cnt == 0)
    goto ret;
   if (cs_bblank(sp, &cs))
    return (1);
   last = 0;
   continue;
  }
  switch (cs.cs_ch) {
  case '.':
  case '?':
  case '!':
   if (!last || --cnt != 0) {
    last = 0;
    continue;
   }

ret: slno = cs.cs_lno;
   scno = cs.cs_cno;





   do {
    if (cs_next(sp, &cs))
     return (1);
   } while (!cs.cs_flags &&
       (cs.cs_ch == ')' || cs.cs_ch == ']' ||
       cs.cs_ch == '"' || cs.cs_ch == '\''));
   if ((cs.cs_flags || isblank(cs.cs_ch)) &&
       cs_fblank(sp, &cs))
    return (1);







   if (vp->m_start.lno != cs.cs_lno ||
       vp->m_start.cno != cs.cs_cno)
    goto okret;





   for (;;) {
    if (cs_prev(sp, &cs))
     return (1);
    if (cs.cs_flags == CS_EOL)
     continue;
    if (cs.cs_flags == 0 && isblank(cs.cs_ch))
     continue;
    break;
   }
   if (cs.cs_flags == CS_EMP)
    goto okret;


   ++cnt;
   cs.cs_lno = slno;
   cs.cs_cno = scno;
   last = 0;
   break;
  case '\t':
   last = 1;
   break;
  default:
   last =
       cs.cs_flags == CS_EOL || isblank(cs.cs_ch) ||
       cs.cs_ch == ')' || cs.cs_ch == ']' ||
       cs.cs_ch == '"' || cs.cs_ch == '\'' ? 1 : 0;
  }
 }

okret: vp->m_stop.lno = cs.cs_lno;
 vp->m_stop.cno = cs.cs_cno;
 if (ISMOTION(vp))
  if (vp->m_start.cno == 0 &&
      (cs.cs_flags != 0 || vp->m_stop.cno == 0)) {
   if (db_get(sp,
       --vp->m_start.lno, DBG_FATAL, ((void*)0), &len))
    return (1);
   vp->m_start.cno = len ? len - 1 : 0;
   F_SET(vp, VM_LMODE);
  } else
   --vp->m_start.cno;
 vp->m_final = vp->m_stop;
 return (0);
}
