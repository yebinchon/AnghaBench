
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int u_int32_t ;
struct TYPE_18__ {size_t cno; int lno; } ;
struct TYPE_15__ {size_t cno; int lno; } ;
struct TYPE_16__ {int count; TYPE_5__ m_stop; TYPE_12__ m_start; int buffer; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_17__ {int showmode; } ;
typedef TYPE_2__ SCR ;
typedef int CHAR_T ;


 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int LF_SET (int) ;
 int OOBLNO ;
 int SM_CHANGE ;
 int TXT_APPENDEOL ;
 int TXT_EMARK ;
 int TXT_OVERWRITE ;
 int VC_BUFFER ;
 int VC_C1SET ;
 scalar_t__ cut (TYPE_2__*,int *,TYPE_12__*,TYPE_5__*,int ) ;
 scalar_t__ db_eget (TYPE_2__*,int ,int **,size_t*,int*) ;
 int set_txt_std (TYPE_2__*,TYPE_1__*,int ) ;
 int v_txt (TYPE_2__*,TYPE_1__*,TYPE_5__*,int *,size_t,int ,int ,int,int ) ;

int
v_subst(SCR *sp, VICMD *vp)
{
 size_t len;
 u_int32_t flags;
 int isempty;
 CHAR_T *p;

 flags = set_txt_std(sp, vp, 0);
 sp->showmode = SM_CHANGE;

 if (db_eget(sp, vp->m_start.lno, &p, &len, &isempty)) {
  if (!isempty)
   return (1);
  len = 0;
  LF_SET(TXT_APPENDEOL);
 } else {
  if (len == 0)
   LF_SET(TXT_APPENDEOL);
  LF_SET(TXT_EMARK | TXT_OVERWRITE);
 }

 vp->m_stop.lno = vp->m_start.lno;
 vp->m_stop.cno =
     vp->m_start.cno + (F_ISSET(vp, VC_C1SET) ? vp->count - 1 : 0);
 if (vp->m_stop.cno > len - 1)
  vp->m_stop.cno = len - 1;

 if (p != ((void*)0) && cut(sp,
     F_ISSET(vp, VC_BUFFER) ? &vp->buffer : ((void*)0),
     &vp->m_start, &vp->m_stop, 0))
  return (1);

 return (v_txt(sp, vp, &vp->m_stop, p, len, 0, OOBLNO, 1, flags));
}
