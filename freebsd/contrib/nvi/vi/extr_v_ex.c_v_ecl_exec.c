
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lno; int ccl_parent; int nextdisp; } ;
typedef TYPE_1__ SCR ;
typedef int CHAR_T ;


 int F_SET (TYPE_1__*,int ) ;
 int M_BERR ;
 int SC_EXIT ;
 int VIM_EMPTY ;
 scalar_t__ db_get (TYPE_1__*,int,int ,int **,size_t*) ;
 scalar_t__ ex_run_str (TYPE_1__*,int *,int *,size_t,int ,int ) ;
 int msgq (TYPE_1__*,int ,char*) ;
 int v_emsg (TYPE_1__*,int *,int ) ;

int
v_ecl_exec(SCR *sp)
{
 size_t len;
 CHAR_T *p;

 if (db_get(sp, sp->lno, 0, &p, &len) && sp->lno == 1) {
  v_emsg(sp, ((void*)0), VIM_EMPTY);
  return (1);
 }
 if (len == 0) {
  msgq(sp, M_BERR, "307|No ex command to execute");
  return (1);
 }


 if (ex_run_str(sp, ((void*)0), p, len, 0, 0))
  return (1);


 sp->nextdisp = sp->ccl_parent;
 F_SET(sp, SC_EXIT);
 return (0);
}
