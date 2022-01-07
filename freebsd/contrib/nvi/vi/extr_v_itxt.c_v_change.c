
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_14__ ;


typedef int u_int32_t ;
struct TYPE_28__ {scalar_t__ lno; size_t cno; } ;
struct TYPE_31__ {scalar_t__ lno; } ;
struct TYPE_29__ {int count; TYPE_14__ m_start; TYPE_5__ m_stop; int buffer; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_30__ {scalar_t__ lno; size_t cno; int showmode; } ;
typedef TYPE_2__ SCR ;
typedef int CHAR_T ;


 int CUT_LINEMODE ;
 int DBG_FATAL ;
 int FREE_SPACEW (TYPE_2__*,int *,size_t) ;
 int F_CLR (TYPE_1__*,int ) ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int F_SET (TYPE_1__*,int ) ;
 int GET_SPACE_RETW (TYPE_2__*,int *,size_t,size_t) ;
 int LF_SET (int) ;
 int LOG_CORRECT ;
 int MEMMOVE (int *,int *,size_t) ;
 int OOBLNO ;
 int O_AUTOINDENT ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int SM_CHANGE ;
 int TXT_AICHARS ;
 int TXT_APPENDEOL ;
 int TXT_EMARK ;
 int TXT_OVERWRITE ;
 int VC_BUFFER ;
 int VC_C1SET ;
 int VM_LMODE ;
 int VM_RCM_MASK ;
 int VM_RCM_SET ;
 scalar_t__ cut (TYPE_2__*,int *,TYPE_14__*,TYPE_5__*,int) ;
 scalar_t__ db_eget (TYPE_2__*,scalar_t__,int **,size_t*,int*) ;
 scalar_t__ db_get (TYPE_2__*,scalar_t__,int ,int **,size_t*) ;
 scalar_t__ db_insert (TYPE_2__*,scalar_t__,int *,size_t) ;
 scalar_t__ del (TYPE_2__*,TYPE_14__*,TYPE_5__*,int) ;
 scalar_t__ nonblank (TYPE_2__*,scalar_t__,size_t*) ;
 int set_txt_std (TYPE_2__*,TYPE_1__*,int ) ;
 int v_ia (TYPE_2__*,TYPE_1__*) ;
 int v_txt (TYPE_2__*,TYPE_1__*,TYPE_5__*,int *,size_t,int ,int ,int,int ) ;

int
v_change(SCR *sp, VICMD *vp)
{
 size_t blen, len;
 u_int32_t flags;
 int isempty, lmode, rval;
 CHAR_T *bp;
 CHAR_T *p;







 F_CLR(vp, VM_RCM_MASK);
 F_SET(vp, VM_RCM_SET);





 if (vp->m_start.lno == vp->m_stop.lno &&
     db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (!isempty)
   return (1);
  return (v_ia(sp, vp));
 }

 flags = set_txt_std(sp, vp, 0);
 sp->showmode = SM_CHANGE;
 lmode = F_ISSET(vp, VM_LMODE) ? CUT_LINEMODE : 0;
 if (lmode) {
  vp->m_start.cno = 0;
  if (O_ISSET(sp, O_AUTOINDENT)) {
   if (nonblank(sp, vp->m_start.lno, &vp->m_start.cno))
    return (1);
   LF_SET(TXT_AICHARS);
  }
 }
 sp->lno = vp->m_start.lno;
 sp->cno = vp->m_start.cno;

 LOG_CORRECT;





 if (!lmode && vp->m_start.lno == vp->m_stop.lno) {





  if (cut(sp,
      F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
      &vp->m_start, &vp->m_stop, lmode))
   return (1);
  if (len == 0)
   LF_SET(TXT_APPENDEOL);
  LF_SET(TXT_EMARK | TXT_OVERWRITE);
  return (v_txt(sp, vp, &vp->m_stop, p, len,
      0, OOBLNO, F_ISSET(vp, VC_C1SET) ? vp->count : 1, flags));
 }
 if (cut(sp,
     F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
     &vp->m_start, &vp->m_stop, lmode))
  return (1);


 if (lmode && vp->m_start.cno) {




  if (db_get(sp, vp->m_start.lno, DBG_FATAL, &p, &len))
   return (1);
  GET_SPACE_RETW(sp, bp, blen, vp->m_start.cno);
  MEMMOVE(bp, p, vp->m_start.cno);
 } else
  bp = ((void*)0);


 if (del(sp, &vp->m_start, &vp->m_stop, lmode))
  return (1);


 if (lmode) {
  if (db_insert(sp, vp->m_start.lno, bp, vp->m_start.cno))
   return (1);
  sp->lno = vp->m_start.lno;
  len = sp->cno = vp->m_start.cno;
 }


 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (!isempty)
   return (1);
  len = 0;
 }


 if (vp->m_start.cno >= len)
  LF_SET(TXT_APPENDEOL);

 rval = v_txt(sp, vp, ((void*)0), p, len,
     0, OOBLNO, F_ISSET(vp, VC_C1SET) ? vp->count : 1, flags);

 if (bp != ((void*)0))
  FREE_SPACEW(sp, bp, blen);
 return (rval);
}
