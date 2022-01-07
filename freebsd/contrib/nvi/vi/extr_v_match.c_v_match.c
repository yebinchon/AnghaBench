
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {size_t cno; int lno; } ;
struct TYPE_13__ {TYPE_4__ m_start; TYPE_4__ m_stop; TYPE_4__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_12__ {size_t cs_cno; scalar_t__ cs_flags; int cs_ch; int cs_lno; } ;
typedef TYPE_1__ VCS ;
struct TYPE_15__ {int* mcs; } ;
typedef int SCR ;
typedef TYPE_4__ MARK ;
typedef int const CHAR_T ;


 scalar_t__ CS_EOF ;
 scalar_t__ CS_SOF ;
 int DBG_FATAL ;
 int F_SET (TYPE_2__*,int ) ;
 scalar_t__ ISMOTION (TYPE_2__*) ;
 int M_BERR ;
 int* STRCHR (int const*,int) ;
 TYPE_9__* VIP (int *) ;
 int VM_LMODE ;
 scalar_t__ cs_init (int *,TYPE_1__*) ;
 int cs_next (int *,TYPE_1__*) ;
 int cs_prev (int *,TYPE_1__*) ;
 scalar_t__ db_eget (int *,int ,int const**,size_t*,int*) ;
 scalar_t__ db_get (int *,int ,int ,int const**,size_t*) ;
 int isblank (int const) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ nonblank (int *,int ,size_t*) ;

int
v_match(SCR *sp, VICMD *vp)
{
 VCS cs;
 MARK *mp;
 size_t cno, len, off;
 int cnt, isempty, matchc, startc, (*gc)(SCR *, VCS *);
 CHAR_T *p;
 CHAR_T *cp;
 const CHAR_T *match_chars;







 match_chars = VIP(sp)->mcs;
 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (isempty)
   goto nomatch;
  return (1);
 }
 for (off = vp->m_start.cno;; ++off) {
  if (off >= len) {
nomatch: msgq(sp, M_BERR, "184|No match character on this line");
   return (1);
  }
  startc = p[off];
  cp = STRCHR(match_chars, startc);
  if (cp != ((void*)0)) {
   cnt = cp - match_chars;
   matchc = match_chars[cnt ^ 1];
   gc = cnt & 1 ? cs_prev : cs_next;
   break;
  }
 }

 cs.cs_lno = vp->m_start.lno;
 cs.cs_cno = off;
 if (cs_init(sp, &cs))
  return (1);
 for (cnt = 1;;) {
  if (gc(sp, &cs))
   return (1);
  if (cs.cs_flags != 0) {
   if (cs.cs_flags == CS_EOF || cs.cs_flags == CS_SOF)
    break;
   continue;
  }
  if (cs.cs_ch == startc)
   ++cnt;
  else if (cs.cs_ch == matchc && --cnt == 0)
   break;
 }
 if (cnt) {
  msgq(sp, M_BERR, "185|Matching character not found");
  return (1);
 }

 vp->m_stop.lno = cs.cs_lno;
 vp->m_stop.cno = cs.cs_cno;
 if (vp->m_start.lno < vp->m_stop.lno ||
     (vp->m_start.lno == vp->m_stop.lno &&
     vp->m_start.cno < vp->m_stop.cno))
  vp->m_final = ISMOTION(vp) ? vp->m_start : vp->m_stop;
 else
  vp->m_final = vp->m_stop;
 if (!ISMOTION(vp) || vp->m_start.lno == vp->m_stop.lno)
  return (0);
 mp = vp->m_start.lno < vp->m_stop.lno ? &vp->m_start : &vp->m_stop;
 if (mp->cno != 0) {
  cno = 0;
  if (nonblank(sp, mp->lno, &cno))
   return (1);
  if (cno < mp->cno)
   return (0);
 }
 mp = vp->m_start.lno < vp->m_stop.lno ? &vp->m_stop : &vp->m_start;
 if (db_get(sp, mp->lno, DBG_FATAL, &p, &len))
  return (1);
 for (p += mp->cno + 1, len -= mp->cno; --len; ++p)
  if (!isblank(*p))
   return (0);
 F_SET(vp, VM_LMODE);
 return (0);
}
