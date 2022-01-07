
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_17__ {TYPE_1__* gp; } ;
struct TYPE_16__ {size_t coff; scalar_t__ lno; size_t soff; } ;
struct TYPE_15__ {int (* scr_move ) (TYPE_3__*,int,int ) ;} ;
typedef TYPE_2__ SMAP ;
typedef TYPE_3__ SCR ;


 int HANDLE_WEIRDNESS (size_t) ;
 TYPE_2__* HMAP ;
 int SMAP_FLUSH (TYPE_2__*) ;
 TYPE_2__* TMAP ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int stub1 (TYPE_3__*,int,int ) ;
 scalar_t__ vs_insertln (TYPE_3__*,size_t) ;
 scalar_t__ vs_line (TYPE_3__*,TYPE_2__*,int *,int *) ;
 size_t vs_screens (TYPE_3__*,scalar_t__,int *) ;

__attribute__((used)) static int
vs_sm_insert(SCR *sp, recno_t lno)
{
 SMAP *p, *t;
 size_t cnt_orig, cnt, coff;


 coff = HMAP->coff;





 for (p = HMAP; p->lno != lno; ++p);

 cnt_orig = vs_screens(sp, lno, ((void*)0));
 HANDLE_WEIRDNESS(cnt_orig);





 cnt = (TMAP - p) + 1;
 if (cnt_orig > cnt)
  cnt_orig = cnt;


 (void)sp->gp->scr_move(sp, p - HMAP, 0);
 if (vs_insertln(sp, cnt_orig))
  return (1);


 memmove(p + cnt_orig, p, (((TMAP - p) - cnt_orig) + 1) * sizeof(SMAP));


 for (t = p + cnt_orig; t <= TMAP; ++t)
  ++t->lno;


 for (cnt = 1, t = p; cnt <= cnt_orig; ++t, ++cnt) {
  t->lno = lno;
  t->coff = coff;
  t->soff = cnt;
  SMAP_FLUSH(t);
  if (vs_line(sp, t, ((void*)0), ((void*)0)))
   return (1);
 }
 return (0);
}
