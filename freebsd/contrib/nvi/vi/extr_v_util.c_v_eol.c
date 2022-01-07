
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t cno; int lno; } ;
typedef int SCR ;
typedef TYPE_1__ MARK ;


 int DBG_FATAL ;
 int M_BERR ;
 int VIM_EOL ;
 scalar_t__ db_get (int *,int ,int ,int *,size_t*) ;
 int msgq (int *,int ,char*) ;
 int v_emsg (int *,int *,int ) ;

void
v_eol(SCR *sp, MARK *mp)
{
 size_t len;

 if (mp == ((void*)0))
  v_emsg(sp, ((void*)0), VIM_EOL);
 else {
  if (db_get(sp, mp->lno, DBG_FATAL, ((void*)0), &len))
   return;
  if (mp->cno == len - 1)
   v_emsg(sp, ((void*)0), VIM_EOL);
  else
   msgq(sp, M_BERR, "196|Movement past the end-of-line");
 }
}
