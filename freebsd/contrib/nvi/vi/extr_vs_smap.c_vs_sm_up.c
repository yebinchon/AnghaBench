
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int scroll_t ;
typedef scalar_t__ recno_t ;
struct TYPE_29__ {scalar_t__ lno; int cno; } ;
struct TYPE_28__ {scalar_t__ t_maxrows; scalar_t__ t_rows; int cols; int rcm; } ;
struct TYPE_27__ {scalar_t__ lno; int coff; int c_scoff; int c_sboff; int soff; } ;
typedef TYPE_1__ SMAP ;
typedef TYPE_2__ SCR ;
typedef TYPE_3__ MARK ;





 TYPE_1__* HMAP ;
 scalar_t__ IS_SMALL (TYPE_2__*) ;
 int OOBLNO ;
 int O_ISSET (TYPE_2__*,int ) ;
 int O_LEFTRIGHT ;
 int P_BOTTOM ;
 int P_TOP ;
 int SMAP_CACHE (TYPE_1__*) ;
 TYPE_1__* TMAP ;

 int abort () ;
 int db_exist (TYPE_2__*,scalar_t__) ;
 int v_eof (TYPE_2__*,int *) ;
 int vs_colpos (TYPE_2__*,scalar_t__,int) ;
 scalar_t__ vs_line (TYPE_2__*,TYPE_1__*,int *,int *) ;
 scalar_t__ vs_sm_1up (TYPE_2__*) ;
 scalar_t__ vs_sm_cursor (TYPE_2__*,TYPE_1__**) ;
 scalar_t__ vs_sm_erase (TYPE_2__*) ;
 scalar_t__ vs_sm_fill (TYPE_2__*,int ,int ) ;
 scalar_t__ vs_sm_next (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int vs_sm_position (TYPE_2__*,TYPE_3__*,int ,int ) ;

__attribute__((used)) static int
vs_sm_up(SCR *sp, MARK *rp, recno_t count, scroll_t scmd, SMAP *smp)
{
 int cursor_set, echanged, zset;
 SMAP *ssmp, s1, s2;
 if (vs_sm_next(sp, TMAP, &s1))
  return (1);
 if (s1.lno > TMAP->lno && !db_exist(sp, s1.lno)) {
  if (scmd == 130 || scmd == 128 || smp == TMAP) {
   v_eof(sp, ((void*)0));
   return (1);
  }
  if (vs_sm_next(sp, smp, &s1))
   return (1);
  if (s1.lno > smp->lno && !db_exist(sp, s1.lno)) {
   v_eof(sp, ((void*)0));
   return (1);
  }
 }
 cursor_set = 0;
 if (IS_SMALL(sp)) {
  if (count >= sp->t_maxrows || scmd == 129) {
   s1 = TMAP[0];
   if (vs_sm_erase(sp))
    return (1);
   for (; count--; s1 = s2) {
    if (vs_sm_next(sp, &s1, &s2))
     return (1);
    if (s2.lno != s1.lno && !db_exist(sp, s2.lno))
     break;
   }
   TMAP[0] = s2;
   if (vs_sm_fill(sp, OOBLNO, P_BOTTOM))
    return (1);
   return (vs_sm_position(sp, rp, 0, P_TOP));
  }
  cursor_set = scmd == 130 || vs_sm_cursor(sp, &ssmp);
  for (; count &&
      sp->t_rows != sp->t_maxrows; --count, ++sp->t_rows) {
   if (vs_sm_next(sp, TMAP, &s1))
    return (1);
   if (TMAP->lno != s1.lno && !db_exist(sp, s1.lno))
    break;
   *++TMAP = s1;

   if (vs_line(sp, TMAP, ((void*)0), ((void*)0)))
    return (1);

   if (!cursor_set)
    ++ssmp;
  }
  if (!cursor_set) {
   rp->lno = ssmp->lno;
   rp->cno = ssmp->c_sboff;
  }
  if (count == 0)
   return (0);
 }

 for (echanged = zset = 0; count; --count) {

  if (vs_sm_next(sp, TMAP, &s1))
   return (1);


  if (TMAP->lno != s1.lno && !db_exist(sp, s1.lno))
   break;


  if (vs_sm_1up(sp))
   return (1);
  switch (scmd) {
  case 130:
   if (smp > HMAP)
    --smp;
   else
    echanged = 1;
   break;
  case 128:
   if (zset) {
    if (smp > HMAP)
     --smp;
   } else {
    smp = TMAP;
    zset = 1;
   }

  default:
   break;
  }
 }

 if (cursor_set)
  return(0);

 switch (scmd) {
 case 130:






  if (echanged) {
   rp->lno = smp->lno;
   rp->cno = vs_colpos(sp, smp->lno,
       (O_ISSET(sp, O_LEFTRIGHT) ?
       smp->coff : (smp->soff - 1) * sp->cols) +
       sp->rcm % sp->cols);
  }
  return (0);
 case 129:




  if (!count) {
   smp = HMAP;
   break;
  }

 case 131:






  for (; count; --count, ++smp)
   if (smp == TMAP || !db_exist(sp, smp[1].lno))
    break;
  break;
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
