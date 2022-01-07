
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_10__ {scalar_t__ c_nlines; } ;
struct TYPE_9__ {int tiq; TYPE_3__* ep; } ;
struct TYPE_8__ {scalar_t__ lno; } ;
typedef TYPE_1__ TEXT ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ EXF ;


 int EXM_NOFILEYET ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 scalar_t__ OOBLNO ;
 int SC_TINPUT ;
 scalar_t__ TAILQ_FIRST (int ) ;
 scalar_t__ TAILQ_LAST (int ,int ) ;
 int _texth ;
 int db_get (TYPE_2__*,scalar_t__,int ,int *,int *) ;
 int ex_emsg (TYPE_2__*,int *,int ) ;

int
db_exist(
 SCR *sp,
 recno_t lno)
{
 EXF *ep;


 if ((ep = sp->ep) == ((void*)0)) {
  ex_emsg(sp, ((void*)0), EXM_NOFILEYET);
  return (1);
 }

 if (lno == OOBLNO)
  return (0);





 if (ep->c_nlines != OOBLNO)
  return (lno <= (F_ISSET(sp, SC_TINPUT) ?
      ep->c_nlines + (((TEXT *)TAILQ_LAST(sp->tiq, _texth))->lno -
      ((TEXT *)TAILQ_FIRST(sp->tiq))->lno) : ep->c_nlines));


 return (!db_get(sp, lno, 0, ((void*)0), ((void*)0)));
}
