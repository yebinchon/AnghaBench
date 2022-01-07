
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef void* recno_t ;
typedef int pos_t ;
struct TYPE_20__ {size_t t_rows; } ;
struct TYPE_19__ {int lno; int soff; scalar_t__ coff; } ;
typedef TYPE_1__ SMAP ;
typedef TYPE_2__ SCR ;


 int F_SET (TYPE_2__*,int ) ;
 int HALFTEXT (TYPE_2__*) ;
 TYPE_1__* HMAP ;
 void* OOBLNO ;




 int SC_SCR_REDRAW ;
 int SMAP_FLUSH (TYPE_1__*) ;
 TYPE_1__* TMAP ;
 int abort () ;
 int db_last (TYPE_2__*,int*) ;
 void* vs_screens (TYPE_2__*,void*,int *) ;
 scalar_t__ vs_sm_next (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int vs_sm_nlines (TYPE_2__*,TYPE_1__*,void*,int ) ;
 int vs_sm_prev (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

int
vs_sm_fill(SCR *sp, recno_t lno, pos_t pos)
{
 SMAP *p, tmp;
 size_t cnt;


 for (p = HMAP, cnt = sp->t_rows; cnt--; ++p)
  SMAP_FLUSH(p);
 F_SET(sp, SC_SCR_REDRAW);

 switch (pos) {
 case 130:
  tmp.lno = 1;
  tmp.coff = 0;
  tmp.soff = 1;


  if (vs_sm_nlines(sp,
      &tmp, lno, HALFTEXT(sp)) <= HALFTEXT(sp)) {
   lno = 1;
   goto top;
  }


  if (db_last(sp, &tmp.lno))
   return (1);
  tmp.coff = 0;
  tmp.soff = vs_screens(sp, tmp.lno, ((void*)0));
  if (vs_sm_nlines(sp,
      &tmp, lno, HALFTEXT(sp)) <= HALFTEXT(sp)) {
   TMAP->lno = tmp.lno;
   TMAP->coff = tmp.coff;
   TMAP->soff = tmp.soff;
   goto bottom;
  }
  goto middle;
 case 128:
  if (lno != OOBLNO) {
top: HMAP->lno = lno;
   HMAP->coff = 0;
   HMAP->soff = 1;
  } else {






   cnt = vs_screens(sp, HMAP->lno, ((void*)0));
   if (cnt < HMAP->soff)
    HMAP->soff = 1;
  }

  for (p = HMAP, cnt = sp->t_rows; --cnt; ++p)
   if (vs_sm_next(sp, p, p + 1))
    goto err;
  break;
 case 129:

middle: p = HMAP + sp->t_rows / 2;
  p->lno = lno;
  p->coff = 0;
  p->soff = 1;
  for (; p > HMAP; --p)
   if (vs_sm_prev(sp, p, p - 1)) {
    lno = 1;
    goto top;
   }


  p = HMAP + sp->t_rows / 2;
  for (; p < TMAP; ++p)
   if (vs_sm_next(sp, p, p + 1))
    goto err;
  break;
 case 131:
  if (lno != OOBLNO) {
   TMAP->lno = lno;
   TMAP->coff = 0;
   TMAP->soff = vs_screens(sp, lno, ((void*)0));
  }

bottom: for (p = TMAP; p > HMAP; --p)
   if (vs_sm_prev(sp, p, p - 1)) {
    lno = 1;
    goto top;
   }
  break;
 default:
  abort();
 }
 return (0);





err: HMAP->lno = 1;
 HMAP->coff = 0;
 HMAP->soff = 1;
 for (p = HMAP; p < TMAP; ++p)
  if (vs_sm_next(sp, p, p + 1))
   return (1);
 return (0);
}
