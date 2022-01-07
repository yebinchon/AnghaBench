
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ recno_t ;
struct TYPE_23__ {TYPE_1__* gp; } ;
struct TYPE_22__ {scalar_t__ lno; size_t soff; } ;
struct TYPE_21__ {int (* scr_move ) (TYPE_3__*,int,int ) ;} ;
typedef TYPE_2__ SMAP ;
typedef TYPE_3__ SCR ;


 int HANDLE_WEIRDNESS (size_t) ;
 TYPE_2__* HMAP ;
 scalar_t__ O_ISSET (TYPE_3__*,int ) ;
 int O_LEFTRIGHT ;
 int SMAP_FLUSH (TYPE_2__*) ;
 TYPE_2__* TMAP ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int stub1 (TYPE_3__*,int,int ) ;
 int stub2 (TYPE_3__*,int,int ) ;
 scalar_t__ vs_deleteln (TYPE_3__*,size_t) ;
 scalar_t__ vs_insertln (TYPE_3__*,size_t) ;
 scalar_t__ vs_line (TYPE_3__*,TYPE_2__*,int *,int *) ;
 size_t vs_screens (TYPE_3__*,scalar_t__,int *) ;
 scalar_t__ vs_sm_next (TYPE_3__*,TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static int
vs_sm_reset(SCR *sp, recno_t lno)
{
 SMAP *p, *t;
 size_t cnt_orig, cnt_new, cnt, diff;






 for (p = HMAP; p->lno != lno; ++p);
 if (O_ISSET(sp, O_LEFTRIGHT)) {
  t = p;
  cnt_orig = cnt_new = 1;
 } else {
  for (cnt_orig = 0,
      t = p; t <= TMAP && t->lno == lno; ++cnt_orig, ++t);
  cnt_new = vs_screens(sp, lno, ((void*)0));
 }

 HANDLE_WEIRDNESS(cnt_orig);

 if (cnt_orig == cnt_new) {
  do {
   SMAP_FLUSH(p);
   if (vs_line(sp, p, ((void*)0), ((void*)0)))
    return (1);
  } while (++p < t);
  return (0);
 }

 if (cnt_orig < cnt_new) {

  diff = cnt_new - cnt_orig;





  cnt = (TMAP - p) + 1;
  if (diff > cnt)
   diff = cnt;


  if (cnt > 1) {
   (void)sp->gp->scr_move(sp, p - HMAP, 0);
   if (vs_insertln(sp, diff))
    return (1);


   memmove(p + diff, p,
       (((TMAP - p) - diff) + 1) * sizeof(SMAP));
  }


  for (cnt = 1, t = p; cnt_new-- && t <= TMAP; ++t, ++cnt) {
   t->lno = lno;
   t->soff = cnt;
   SMAP_FLUSH(t);
   if (vs_line(sp, t, ((void*)0), ((void*)0)))
    return (1);
  }
 } else {

  diff = cnt_orig - cnt_new;


  (void)sp->gp->scr_move(sp, p - HMAP, 0);
  if (vs_deleteln(sp, diff))
   return (1);


  memmove(p, p + diff, (((TMAP - p) - diff) + 1) * sizeof(SMAP));


  for (cnt = 1, t = p; cnt_new--; ++t, ++cnt) {
   t->lno = lno;
   t->soff = cnt;
   SMAP_FLUSH(t);
   if (vs_line(sp, t, ((void*)0), ((void*)0)))
    return (1);
  }


  for (t = TMAP - diff;;) {
   if (t < TMAP && vs_sm_next(sp, t, t + 1))
    return (1);

   if (vs_line(sp, ++t, ((void*)0), ((void*)0)))
    return (1);
   if (t == TMAP)
    break;
  }
 }
 return (0);
}
