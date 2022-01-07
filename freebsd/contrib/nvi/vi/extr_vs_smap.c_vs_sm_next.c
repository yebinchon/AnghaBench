
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t soff; scalar_t__ lno; int coff; } ;
typedef TYPE_1__ SMAP ;
typedef int SCR ;


 scalar_t__ O_ISSET (int *,int ) ;
 int O_LEFTRIGHT ;
 int SMAP_FLUSH (TYPE_1__*) ;
 size_t vs_screens (int *,scalar_t__,int *) ;

int
vs_sm_next(SCR *sp, SMAP *p, SMAP *t)
{
 size_t lcnt;

 SMAP_FLUSH(t);
 if (O_ISSET(sp, O_LEFTRIGHT)) {
  t->lno = p->lno + 1;
  t->coff = p->coff;
 } else {
  lcnt = vs_screens(sp, p->lno, ((void*)0));
  if (lcnt == p->soff) {
   t->lno = p->lno + 1;
   t->soff = 1;
  } else {
   t->lno = p->lno;
   t->soff = p->soff + 1;
  }
 }
 return (0);
}
