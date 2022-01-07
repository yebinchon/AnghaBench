
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_12__ {int lno; } ;
struct TYPE_13__ {int count; TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_14__ {int cno; int lno; int showmode; } ;
typedef TYPE_3__ SCR ;
typedef int CHAR_T ;


 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int LF_SET (int ) ;
 int OOBLNO ;
 int SM_APPEND ;
 int TXT_APPENDEOL ;
 int VC_C1SET ;
 scalar_t__ db_eget (TYPE_3__*,int ,int **,size_t*,int*) ;
 int set_txt_std (TYPE_3__*,TYPE_2__*,int ) ;
 int v_txt (TYPE_3__*,TYPE_2__*,int *,int *,size_t,int ,int ,int,int ) ;

int
v_ia(SCR *sp, VICMD *vp)
{
 size_t len;
 u_int32_t flags;
 int isempty;
 CHAR_T *p;

 flags = set_txt_std(sp, vp, 0);
 sp->showmode = SM_APPEND;
 sp->lno = vp->m_start.lno;


 if (db_eget(sp, sp->lno, &p, &len, &isempty)) {
  if (!isempty)
   return (1);
  len = 0;
  LF_SET(TXT_APPENDEOL);
 } else if (len) {
  if (len == sp->cno + 1) {
   sp->cno = len;
   LF_SET(TXT_APPENDEOL);
  } else
   ++sp->cno;
 } else
  LF_SET(TXT_APPENDEOL);

 return (v_txt(sp, vp, ((void*)0), p, len,
     0, OOBLNO, F_ISSET(vp, VC_C1SET) ? vp->count : 1, flags));
}
