
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int recno_t ;
struct TYPE_7__ {int lno; } ;
struct TYPE_6__ {int lno; scalar_t__ cno; } ;
typedef int TEXTH ;
typedef TYPE_1__ SCR ;


 int F_SET (TYPE_1__*,int ) ;
 int SC_SCR_REDRAW ;
 TYPE_4__* TAILQ_FIRST (int *) ;
 int db_exist (TYPE_1__*,int) ;

__attribute__((used)) static void
txt_err(SCR *sp, TEXTH *tiqh)
{
 recno_t lno;
 for (lno = TAILQ_FIRST(tiqh)->lno;
     !db_exist(sp, lno) && lno > 0; --lno);

 sp->lno = lno == 0 ? 1 : lno;
 sp->cno = 0;


 F_SET(sp, SC_SCR_REDRAW);
}
