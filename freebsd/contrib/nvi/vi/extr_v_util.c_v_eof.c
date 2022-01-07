
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_3__ {scalar_t__ lno; } ;
typedef int SCR ;
typedef TYPE_1__ MARK ;


 int M_BERR ;
 int VIM_EOF ;
 scalar_t__ db_last (int *,scalar_t__*) ;
 int msgq (int *,int ,char*) ;
 int v_emsg (int *,int *,int ) ;

void
v_eof(SCR *sp, MARK *mp)
{
 recno_t lno;

 if (mp == ((void*)0))
  v_emsg(sp, ((void*)0), VIM_EOF);
 else {
  if (db_last(sp, &lno))
   return;
  if (mp->lno >= lno)
   v_emsg(sp, ((void*)0), VIM_EOF);
  else
   msgq(sp, M_BERR, "195|Movement past the end-of-file");
 }
}
