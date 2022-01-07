
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int scroll_t ;
typedef scalar_t__ recno_t ;
struct TYPE_29__ {int lno; int cno; } ;
struct TYPE_28__ {scalar_t__ t_maxrows; scalar_t__ t_rows; int cols; int rcm; } ;
struct TYPE_27__ {int lno; int soff; int coff; int c_scoff; int c_sboff; } ;
typedef TYPE_1__ SMAP ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ MARK ;





 TYPE_1__* HMAP ;
 scalar_t__ IS_SMALL (TYPE_2__*) ;
 int OOBLNO ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_LEFTRIGHT ;
 int P_BOTTOM ;
 int P_TOP ;
 int SMAP_CACHE (TYPE_1__*) ;
 TYPE_1__* TMAP ;

 int abort () ;
 int db_exist (TYPE_2__*,int) ;
 int v_sof (TYPE_2__*,int *) ;
 int vs_colpos (TYPE_2__*,int,int) ;
 scalar_t__ vs_line (TYPE_2__*,TYPE_1__*,int *,int *) ;
 scalar_t__ vs_sm_1down (TYPE_2__*) ;
 scalar_t__ vs_sm_cursor (TYPE_2__*,TYPE_1__**) ;
 scalar_t__ vs_sm_erase (TYPE_2__*) ;
 scalar_t__ vs_sm_fill (TYPE_2__*,int ,int ) ;
 int vs_sm_position (TYPE_2__*,TYPE_3__*,int ,int ) ;
 scalar_t__ vs_sm_prev (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int
vs_sm_down(SCR *sp, MARK *rp, recno_t count, scroll_t scmd, SMAP *smp)
{
 SMAP *ssmp, s1, s2;
 int cursor_set, ychanged, zset;


 if (HMAP->lno == 1 &&
     (O_ISSET(sp, O_LEFTRIGHT) || HMAP->soff == 1) &&
     (scmd == 129 || scmd == 128 || smp == HMAP)) {
  v_sof(sp, ((void*)0));
  return (1);
 }
 cursor_set = scmd == 129;
 if (IS_SMALL(sp)) {
  if (count >= sp->t_maxrows || scmd == 131) {
   s1 = HMAP[0];
   if (vs_sm_erase(sp))
    return (1);
   for (; count--; s1 = s2) {
    if (vs_sm_prev(sp, &s1, &s2))
     return (1);
    if (s2.lno == 1 &&
        (O_ISSET(sp, O_LEFTRIGHT) || s2.soff == 1))
     break;
   }
   HMAP[0] = s2;
   if (vs_sm_fill(sp, OOBLNO, P_TOP))
    return (1);
   return (vs_sm_position(sp, rp, 0, P_BOTTOM));
  }
  cursor_set = scmd == 129 || vs_sm_cursor(sp, &ssmp);
  for (; count &&
      sp->t_rows != sp->t_maxrows; --count, ++sp->t_rows) {
   if (HMAP->lno == 1 &&
       (O_ISSET(sp, O_LEFTRIGHT) || HMAP->soff == 1))
    break;
   ++TMAP;
   if (vs_sm_1down(sp))
    return (1);
  }
  if (!cursor_set) {
   rp->lno = ssmp->lno;
   rp->cno = ssmp->c_sboff;
  }
  if (count == 0)
   return (0);
 }

 for (ychanged = zset = 0; count; --count) {

  if (HMAP->lno == 1 &&
      (O_ISSET(sp, O_LEFTRIGHT) || HMAP->soff == 1))
   break;


  if (vs_sm_1down(sp))
   return (1);
  switch (scmd) {
  case 129:
   if (smp < TMAP)
    ++smp;
   else
    ychanged = 1;
   break;
  case 128:
   if (zset) {
    if (smp < TMAP)
     ++smp;
   } else {
    smp = HMAP;
    zset = 1;
   }

  default:
   break;
  }
 }

 if (scmd != 129 && cursor_set)
  return(0);

 switch (scmd) {
 case 131:





  if (!count) {
   for (smp = TMAP; smp > HMAP; --smp)
    if (db_exist(sp, smp->lno))
     break;
   break;
  }

 case 130:




  if (count < smp - HMAP)
   smp -= count;
  else
   smp = HMAP;
  break;
 case 129:






  if (ychanged) {
   rp->lno = smp->lno;
   rp->cno = vs_colpos(sp, smp->lno,
       (O_ISSET(sp, O_LEFTRIGHT) ?
       smp->coff : (smp->soff - 1) * sp->cols) +
       sp->rcm % sp->cols);
  }
  return (0);
 case 128:

  break;
 default:
  abort();
 }

 if (!SMAP_CACHE(smp) && vs_line(sp, smp, ((void*)0), ((void*)0)))
  return (1);
 rp->lno = smp->lno;
 rp->cno = smp->c_scoff == 255 ? 0 : smp->c_sboff;
 return (0);
}
