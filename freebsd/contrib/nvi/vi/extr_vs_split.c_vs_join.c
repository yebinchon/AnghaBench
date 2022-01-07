
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jdir_t ;
struct TYPE_9__ {int dq; } ;
struct TYPE_8__ {size_t rows; scalar_t__ coff; size_t cols; scalar_t__ roff; TYPE_2__* gp; } ;
typedef TYPE_1__ SCR ;
typedef TYPE_2__ GS ;


 int HORIZ_FOLLOW ;
 int HORIZ_PRECEDE ;
 TYPE_1__* TAILQ_FIRST (int ) ;
 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int VERT_FOLLOW ;
 int VERT_PRECEDE ;
 int abort () ;
 int q ;

__attribute__((used)) static int
vs_join(SCR *sp, SCR **listp, jdir_t *jdirp)
{
 GS *gp;
 SCR **lp, *tsp;
 int first;
 size_t tlen;

 gp = sp->gp;


 for (lp = listp, tlen = sp->rows,
     tsp = TAILQ_FIRST(gp->dq);
     tsp != ((void*)0); tsp = TAILQ_NEXT(tsp, q)) {
  if (sp == tsp)
   continue;

  if (tsp->coff + tsp->cols + 1 != sp->coff)
   continue;




  if (tsp->roff > sp->roff + sp->rows)
   continue;
  if (tsp->roff < sp->roff) {
   if (tsp->roff + tsp->rows >= sp->roff)
    break;
   continue;
  }
  if (tsp->roff + tsp->rows > sp->roff + sp->rows)
   break;




  tlen -= tsp->rows;
  *lp++ = tsp;
 }
 if (tlen == 0) {
  *lp = ((void*)0);
  *jdirp = VERT_PRECEDE;
  return (0);
 }


 for (lp = listp, tlen = sp->rows,
     tsp = TAILQ_FIRST(gp->dq);
     tsp != ((void*)0); tsp = TAILQ_NEXT(tsp, q)) {
  if (sp == tsp)
   continue;

  if (tsp->coff != sp->coff + sp->cols + 1)
   continue;




  if (tsp->roff > sp->roff + sp->rows)
   continue;
  if (tsp->roff < sp->roff) {
   if (tsp->roff + tsp->rows >= sp->roff)
    break;
   continue;
  }
  if (tsp->roff + tsp->rows > sp->roff + sp->rows)
   break;




  tlen -= tsp->rows;
  *lp++ = tsp;
 }
 if (tlen == 0) {
  *lp = ((void*)0);
  *jdirp = VERT_FOLLOW;
  return (0);
 }


 for (first = 0, lp = listp, tlen = sp->cols,
     tsp = TAILQ_FIRST(gp->dq);
     tsp != ((void*)0); tsp = TAILQ_NEXT(tsp, q)) {
  if (sp == tsp)
   continue;

  if (tsp->roff + tsp->rows != sp->roff)
   continue;




  if (tsp->coff > sp->coff + sp->cols)
   continue;
  if (tsp->coff < sp->coff) {
   if (tsp->coff + tsp->cols >= sp->coff)
    break;
   continue;
  }
  if (tsp->coff + tsp->cols > sp->coff + sp->cols)
   break;




  tlen -= tsp->cols + first;
  first = 1;
  *lp++ = tsp;
 }
 if (tlen == 0) {
  *lp = ((void*)0);
  *jdirp = HORIZ_PRECEDE;
  return (0);
 }


 for (first = 0, lp = listp, tlen = sp->cols,
     tsp = TAILQ_FIRST(gp->dq);
     tsp != ((void*)0); tsp = TAILQ_NEXT(tsp, q)) {
  if (sp == tsp)
   continue;

  if (tsp->roff != sp->roff + sp->rows)
   continue;




  if (tsp->coff > sp->coff + sp->cols)
   continue;
  if (tsp->coff < sp->coff) {
   if (tsp->coff + tsp->cols >= sp->coff)
    break;
   continue;
  }
  if (tsp->coff + tsp->cols > sp->coff + sp->cols)
   break;




  tlen -= tsp->cols + first;
  first = 1;
  *lp++ = tsp;
 }
 if (tlen == 0) {
  *lp = ((void*)0);
  *jdirp = HORIZ_FOLLOW;
  return (0);
 }
 return (1);
}
