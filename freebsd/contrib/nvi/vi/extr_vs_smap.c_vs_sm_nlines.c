
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_3__ {scalar_t__ lno; scalar_t__ soff; } ;
typedef TYPE_1__ SMAP ;
typedef int SCR ;


 scalar_t__ O_ISSET (int *,int ) ;
 int O_LEFTRIGHT ;
 int vs_screens (int *,scalar_t__,int *) ;

recno_t
vs_sm_nlines(SCR *sp, SMAP *from_sp, recno_t to_lno, size_t max)
{
 recno_t lno, lcnt;

 if (O_ISSET(sp, O_LEFTRIGHT))
  return (from_sp->lno > to_lno ?
      from_sp->lno - to_lno : to_lno - from_sp->lno);

 if (from_sp->lno == to_lno)
  return (from_sp->soff - 1);

 if (from_sp->lno > to_lno) {
  lcnt = from_sp->soff - 1;
  for (lno = from_sp->lno; --lno >= to_lno && lcnt <= max;)
   lcnt += vs_screens(sp, lno, ((void*)0));
 } else {
  lno = from_sp->lno;
  lcnt = (vs_screens(sp, lno, ((void*)0)) - from_sp->soff) + 1;
  for (; ++lno < to_lno && lcnt <= max;)
   lcnt += vs_screens(sp, lno, ((void*)0));
 }
 return (lcnt);
}
