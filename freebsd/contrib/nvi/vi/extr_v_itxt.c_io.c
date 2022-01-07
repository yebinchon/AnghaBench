
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_int32_t ;
typedef scalar_t__ recno_t ;
typedef enum which { ____Placeholder_which } which ;
struct TYPE_14__ {int count; } ;
typedef TYPE_1__ VICMD ;
struct TYPE_15__ {int lno; scalar_t__ cno; int showmode; } ;
typedef TYPE_2__ SCR ;
typedef int CHAR_T ;


 int DBG_FATAL ;
 scalar_t__ F_ISSET (TYPE_1__*,int ) ;
 int * L (char*) ;
 int LOG_CORRECT ;
 scalar_t__ OOBLNO ;
 int O_cmd ;
 int SM_INSERT ;
 int TXT_ADDNEWLINE ;
 int TXT_APPENDEOL ;
 int VC_C1SET ;
 scalar_t__ db_append (TYPE_2__*,int,int,int *,int ) ;
 scalar_t__ db_get (TYPE_2__*,int,int ,int **,size_t*) ;
 scalar_t__ db_insert (TYPE_2__*,int,int *,int ) ;
 scalar_t__ db_last (TYPE_2__*,scalar_t__*) ;
 int set_txt_std (TYPE_2__*,TYPE_1__*,int) ;
 int v_txt (TYPE_2__*,TYPE_1__*,int *,int *,size_t,int ,scalar_t__,int,int ) ;

__attribute__((used)) static int
io(SCR *sp, VICMD *vp, enum which cmd)
{
 recno_t ai_line, lno;
 size_t len;
 u_int32_t flags;
 CHAR_T *p;

 flags = set_txt_std(sp, vp, TXT_ADDNEWLINE | TXT_APPENDEOL);
 sp->showmode = SM_INSERT;

 if (sp->lno == 1) {
  if (db_last(sp, &lno))
   return (1);
  if (lno != 0)
   goto insert;
  p = ((void*)0);
  len = 0;
  ai_line = OOBLNO;
 } else {
insert: p = L("");
  sp->cno = 0;
  LOG_CORRECT;

  if (cmd == O_cmd) {
   if (db_insert(sp, sp->lno, p, 0))
    return (1);
   if (db_get(sp, sp->lno, DBG_FATAL, &p, &len))
    return (1);
   ai_line = sp->lno + 1;
  } else {
   if (db_append(sp, 1, sp->lno, p, 0))
    return (1);
   if (db_get(sp, ++sp->lno, DBG_FATAL, &p, &len))
    return (1);
   ai_line = sp->lno - 1;
  }
 }
 return (v_txt(sp, vp, ((void*)0), p, len,
     0, ai_line, F_ISSET(vp, VC_C1SET) ? vp->count : 1, flags));
}
