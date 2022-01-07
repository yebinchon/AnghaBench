
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {struct roffcol const* cols; } ;
struct termp {scalar_t__ enc; scalar_t__ viscol; int (* endline ) (struct termp*) ;TYPE_5__ tbl; TYPE_4__* tcols; int (* advance ) (struct termp*,scalar_t__) ;} ;
struct tbl_span {scalar_t__ pos; TYPE_2__* layout; TYPE_6__* opts; TYPE_3__* next; struct tbl_dat* first; } ;
struct tbl_dat {int * string; struct tbl_dat* next; struct tbl_cell const* layout; } ;
struct tbl_cell {scalar_t__ pos; int col; int vert; struct tbl_cell* next; } ;
typedef struct roffcol {int width; int spacing; } const roffcol ;
struct TYPE_12__ {int opts; int cols; } ;
struct TYPE_10__ {scalar_t__ offset; } ;
struct TYPE_9__ {struct tbl_dat* first; } ;
struct TYPE_8__ {TYPE_1__* last; struct tbl_cell* first; } ;
struct TYPE_7__ {scalar_t__ pos; } ;


 int BDOWN ;
 int BHORIZ ;
 int BLEFT ;
 int BRIGHT ;
 int BUP ;
 scalar_t__ TBL_CELL_DOWN ;
 scalar_t__ TBL_CELL_SPAN ;
 int TBL_OPT_ALLBOX ;
 int TBL_OPT_BOX ;
 int TBL_OPT_DBOX ;
 scalar_t__ TBL_SPAN_DATA ;
 scalar_t__ TBL_SPAN_DHORIZ ;
 scalar_t__ TERMENC_ASCII ;
 scalar_t__ TERMENC_UTF8 ;
 scalar_t__ strcmp (int *,char*) ;
 int stub1 (struct termp*,scalar_t__) ;
 int stub2 (struct termp*) ;
 int tbl_direct_border (struct termp*,int,int) ;

__attribute__((used)) static void
tbl_hrule(struct termp *tp, const struct tbl_span *spp,
    const struct tbl_span *sp, const struct tbl_span *spn, int flags)
{
 const struct tbl_cell *cpp;
 const struct tbl_cell *cp;
 const struct tbl_cell *cpn;
 const struct tbl_dat *dpn;
 const struct roffcol *col;
 int opts;
 int bw;
 int hw;
 int lw, rw;
 int uw, dw;

 cpp = spp == ((void*)0) ? ((void*)0) : spp->layout->first;
 cp = sp == ((void*)0) ? ((void*)0) : sp->layout->first;
 cpn = spn == ((void*)0) ? ((void*)0) : spn->layout->first;
 dpn = ((void*)0);
 if (spn != ((void*)0)) {
  if (spn->pos == TBL_SPAN_DATA)
   dpn = spn->first;
  else if (spn->next != ((void*)0))
   dpn = spn->next->first;
 }
 opts = sp->opts->opts;
 bw = opts & TBL_OPT_DBOX ? (tp->enc == TERMENC_UTF8 ? 2 : 1) :
     opts & (TBL_OPT_BOX | TBL_OPT_ALLBOX) ? 1 : 0;
 hw = flags == TBL_OPT_DBOX || flags == TBL_OPT_BOX ? bw :
     sp->pos == TBL_SPAN_DHORIZ ? 2 : 1;



 if (tp->viscol == 0) {
  (*tp->advance)(tp, tp->tcols->offset);
  tp->viscol = tp->tcols->offset;
 }
 if (flags != 0)
  tbl_direct_border(tp,
      (spp == ((void*)0) ? 0 : BUP * bw) +
      (spn == ((void*)0) ? 0 : BDOWN * bw) +
      (spp == ((void*)0) || cpn == ((void*)0) ||
       cpn->pos != TBL_CELL_DOWN ? BRIGHT * hw : 0), 1);

 col = tp->tbl.cols;
 for (;;) {
  if (cp == ((void*)0))
   col++;
  else
   col = tp->tbl.cols + cp->col;



  lw = cpp == ((void*)0) || cpn == ((void*)0) ||
      (cpn->pos != TBL_CELL_DOWN &&
       (dpn == ((void*)0) || dpn->string == ((void*)0) ||
        strcmp(dpn->string, "\\^") != 0))
      ? hw : 0;
  tbl_direct_border(tp, BHORIZ * lw,
      col->width + col->spacing / 2);







  uw = dw = 0;
  if (cpp != ((void*)0)) {
   if (flags != TBL_OPT_DBOX) {
    uw = cpp->vert;
    if (uw == 0 && opts & TBL_OPT_ALLBOX)
     uw = 1;
   }
   cpp = cpp->next;
  } else if (spp != ((void*)0) && opts & TBL_OPT_ALLBOX)
   uw = 1;
  if (cp != ((void*)0))
   cp = cp->next;
  if (cpn != ((void*)0)) {
   if (flags != TBL_OPT_DBOX) {
    dw = cpn->vert;
    if (dw == 0 && opts & TBL_OPT_ALLBOX)
     dw = 1;
   }
   cpn = cpn->next;
   while (dpn != ((void*)0) && dpn->layout != cpn)
    dpn = dpn->next;
  } else if (spn != ((void*)0) && opts & TBL_OPT_ALLBOX)
   dw = 1;
  if (col + 1 == tp->tbl.cols + sp->opts->cols)
   break;



  if (cpp != ((void*)0) && cpp->pos == TBL_CELL_SPAN)
   uw = 0;
  if (cpn != ((void*)0) && cpn->pos == TBL_CELL_SPAN)
   dw = 0;



  rw = cpp == ((void*)0) || cpn == ((void*)0) ||
      (cpn->pos != TBL_CELL_DOWN &&
       (dpn == ((void*)0) || dpn->string == ((void*)0) ||
        strcmp(dpn->string, "\\^") != 0))
      ? hw : 0;



  if (col->spacing)
   tbl_direct_border(tp, BLEFT * lw +
       BRIGHT * rw + BUP * uw + BDOWN * dw, 1);





  if (tp->enc != TERMENC_ASCII || (uw < 2 && dw < 2))
   uw = dw = 0;
  if (col->spacing > 2)
   tbl_direct_border(tp,
                            BHORIZ * rw + BUP * uw + BDOWN * dw, 1);



  if (col->spacing > 4)
   tbl_direct_border(tp,
       BHORIZ * rw, (col->spacing - 3) / 2);
 }



 if (flags != 0) {
  tbl_direct_border(tp,
      (spp == ((void*)0) ? 0 : BUP * bw) +
      (spn == ((void*)0) ? 0 : BDOWN * bw) +
      (spp == ((void*)0) || spn == ((void*)0) ||
       spn->layout->last->pos != TBL_CELL_DOWN ?
       BLEFT * hw : 0), 1);
  (*tp->endline)(tp);
  tp->viscol = 0;
 }
}
