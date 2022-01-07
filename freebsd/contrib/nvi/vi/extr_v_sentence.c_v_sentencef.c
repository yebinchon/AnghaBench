
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_11__ {scalar_t__ lno; scalar_t__ cno; } ;
struct TYPE_12__ {int count; TYPE_1__ m_stop; TYPE_1__ m_final; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_13__ {scalar_t__ cs_lno; scalar_t__ cs_cno; scalar_t__ cs_flags; int cs_ch; } ;
typedef TYPE_3__ VCS ;
typedef int SCR ;


 scalar_t__ CS_EMP ;
 scalar_t__ CS_EOF ;
 scalar_t__ CS_EOL ;
 int DBG_FATAL ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int VC_C1SET ;
 int VM_LMODE ;
 scalar_t__ cs_fblank (int *,TYPE_3__*) ;
 scalar_t__ cs_init (int *,TYPE_3__*) ;
 scalar_t__ cs_next (int *,TYPE_3__*) ;
 scalar_t__ db_get (int *,scalar_t__,int ,int *,size_t*) ;
 scalar_t__ isblank (int) ;
 int v_eof (int *,int *) ;

int
v_sentencef(SCR *sp, VICMD *vp)
{
 enum { BLANK, NONE, PERIOD } state;
 VCS cs;
 size_t len;
 u_long cnt;

 cs.cs_lno = vp->m_start.lno;
 cs.cs_cno = vp->m_start.cno;
 if (cs_init(sp, &cs))
  return (1);

 cnt = F_ISSET(vp, VC_C1SET) ? vp->count : 1;







 if (cs.cs_flags == CS_EMP || (cs.cs_flags == 0 && isblank(cs.cs_ch))) {
  if (cs_fblank(sp, &cs))
   return (1);
  if (--cnt == 0) {
   if (vp->m_start.lno != cs.cs_lno ||
       vp->m_start.cno != cs.cs_cno)
    goto okret;
   return (1);
  }
 }

 for (state = NONE;;) {
  if (cs_next(sp, &cs))
   return (1);
  if (cs.cs_flags == CS_EOF)
   break;
  if (cs.cs_flags == CS_EOL) {
   if ((state == PERIOD || state == BLANK) && --cnt == 0) {
    if (cs_next(sp, &cs))
     return (1);
    if (cs.cs_flags == 0 &&
        isblank(cs.cs_ch) && cs_fblank(sp, &cs))
     return (1);
    goto okret;
   }
   state = NONE;
   continue;
  }
  if (cs.cs_flags == CS_EMP) {
   if (--cnt == 0)
    goto okret;
   if (cs_fblank(sp, &cs))
    return (1);
   if (--cnt == 0)
    goto okret;
   state = NONE;
   continue;
  }
  switch (cs.cs_ch) {
  case '.':
  case '?':
  case '!':
   state = PERIOD;
   break;
  case ')':
  case ']':
  case '"':
  case '\'':
   if (state != PERIOD)
    state = NONE;
   break;
  case '\t':
   if (state == PERIOD)
    state = BLANK;

  case ' ':
   if (state == PERIOD) {
    state = BLANK;
    break;
   }
   if (state == BLANK && --cnt == 0) {
    if (cs_fblank(sp, &cs))
     return (1);
    goto okret;
   }

  default:
   state = NONE;
   break;
  }
 }


 if (vp->m_start.lno == cs.cs_lno && vp->m_start.cno == cs.cs_cno) {
  v_eof(sp, ((void*)0));
  return (1);
 }

okret: vp->m_stop.lno = cs.cs_lno;
 vp->m_stop.cno = cs.cs_cno;
 if (ISMOTION(vp)) {
  if (vp->m_start.cno == 0 &&
      (cs.cs_flags != 0 || vp->m_stop.cno == 0)) {
   if (vp->m_start.lno < vp->m_stop.lno) {
    if (db_get(sp,
        --vp->m_stop.lno, DBG_FATAL, ((void*)0), &len))
     return (1);
    vp->m_stop.cno = len ? len - 1 : 0;
   }
   F_SET(vp, VM_LMODE);
  } else
   --vp->m_stop.cno;
  vp->m_final = vp->m_start;
 } else
  vp->m_final = vp->m_stop;
 return (0);
}
