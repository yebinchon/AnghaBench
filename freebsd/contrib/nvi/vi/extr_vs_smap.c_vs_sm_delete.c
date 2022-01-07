
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_19__ {TYPE_1__* gp; } ;
struct TYPE_18__ {scalar_t__ lno; } ;
struct TYPE_17__ {int (* scr_move ) (TYPE_3__*,int,int ) ;} ;
typedef TYPE_2__ SMAP ;
typedef TYPE_3__ SCR ;


 int HANDLE_WEIRDNESS (size_t) ;
 TYPE_2__* HMAP ;
 scalar_t__ O_ISSET (TYPE_3__*,int ) ;
 int O_LEFTRIGHT ;
 TYPE_2__* TMAP ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int stub1 (TYPE_3__*,int,int ) ;
 scalar_t__ vs_deleteln (TYPE_3__*,size_t) ;
 scalar_t__ vs_line (TYPE_3__*,TYPE_2__*,int *,int *) ;
 scalar_t__ vs_sm_next (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int
vs_sm_delete(SCR *sp, recno_t lno)
{
 SMAP *p, *t;
 size_t cnt_orig;





 for (p = HMAP; p->lno != lno; ++p);
 if (O_ISSET(sp, O_LEFTRIGHT))
  cnt_orig = 1;
 else
  for (cnt_orig = 1, t = p + 1;
      t <= TMAP && t->lno == lno; ++cnt_orig, ++t);

 HANDLE_WEIRDNESS(cnt_orig);


 (void)sp->gp->scr_move(sp, p - HMAP, 0);
 if (vs_deleteln(sp, cnt_orig))
  return (1);


 memmove(p, p + cnt_orig, (((TMAP - p) - cnt_orig) + 1) * sizeof(SMAP));


 for (t = TMAP - cnt_orig; p <= t; ++p)
  --p->lno;


 for (p = TMAP - cnt_orig;;) {
  if (p < TMAP && vs_sm_next(sp, p, p + 1))
   return (1);

  if (vs_line(sp, ++p, ((void*)0), ((void*)0)))
   return (1);
  if (p == TMAP)
   break;
 }
 return (0);
}
