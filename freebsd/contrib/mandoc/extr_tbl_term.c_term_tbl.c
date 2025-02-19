
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_7__* cols; struct termp* arg; int sulen; int slen; int len; } ;
struct termp {int flags; scalar_t__ enc; size_t maxrmargin; int lasttcol; int viscol; int skipvsp; TYPE_4__* tcol; TYPE_5__ tbl; int (* endline ) (struct termp*) ;TYPE_4__* tcols; int (* advance ) (struct termp*,int) ;int col; } ;
struct tbl_span {int pos; struct tbl_span const* next; TYPE_6__* opts; TYPE_3__* layout; TYPE_2__* last; struct tbl_span const* prev; struct tbl_dat* first; } ;
struct tbl_dat {int hspans; scalar_t__ pos; struct tbl_dat* next; } ;
typedef struct tbl_cell {scalar_t__ pos; int vert; int col; struct tbl_cell const* next; } const tbl_cell ;
struct TYPE_16__ {size_t spacing; scalar_t__ width; } ;
struct TYPE_15__ {int opts; int cols; scalar_t__ rvert; scalar_t__ lvert; } ;
struct TYPE_13__ {size_t offset; size_t rmargin; scalar_t__ col; scalar_t__ lastcol; } ;
struct TYPE_12__ {int vert; struct tbl_cell const* last; struct tbl_cell const* first; } ;
struct TYPE_11__ {scalar_t__ pos; TYPE_1__* layout; } ;
struct TYPE_10__ {int col; } ;


 int BDOWN ;
 int BHORIZ ;
 int BLEFT ;
 int BRIGHT ;
 int BUP ;
 scalar_t__ IS_HORIZ (struct tbl_cell const*) ;


 scalar_t__ TBL_CELL_SPAN ;
 scalar_t__ TBL_DATA_DHORIZ ;
 scalar_t__ TBL_DATA_HORIZ ;
 int TBL_OPT_ALLBOX ;
 int TBL_OPT_BOX ;
 int TBL_OPT_CENTRE ;
 int TBL_OPT_DBOX ;



 scalar_t__ TERMENC_ASCII ;
 scalar_t__ TERMENC_UTF8 ;
 int TERMP_MULTICOL ;
 int TERMP_NONOSPACE ;
 int TERMP_NOSPACE ;
 int assert (TYPE_7__*) ;
 int borders_ascii ;
 int borders_locale ;
 int borders_utf8 ;
 int free (TYPE_7__*) ;
 int stub1 (struct termp*,int) ;
 int stub2 (struct termp*,int) ;
 int stub3 (struct termp*) ;
 int tbl_data (struct termp*,TYPE_6__*,struct tbl_cell const*,struct tbl_dat const*,TYPE_7__*) ;
 int tbl_direct_border (struct termp*,int,int) ;
 int tbl_hrule (struct termp*,struct tbl_span const*,struct tbl_span const*,struct tbl_span const*,int) ;
 int tblcalc (TYPE_5__*,struct tbl_span const*,size_t,size_t) ;
 int term_flushln (struct termp*) ;
 int term_setcol (struct termp*,int) ;
 int term_tab_iset (size_t) ;
 int term_tab_set (struct termp*,int *) ;
 int term_tbl_len ;
 int term_tbl_strlen ;
 int term_tbl_sulen ;

void
term_tbl(struct termp *tp, const struct tbl_span *sp)
{
 const struct tbl_cell *cp, *cpn, *cpp, *cps;
 const struct tbl_dat *dp;
 static size_t offset;
 size_t save_offset;
 size_t coloff, tsz;
 int hspans, ic, more;
 int dvert, fc, horiz, lhori, rhori, uvert;



 tp->flags |= TERMP_NOSPACE | TERMP_NONOSPACE;
 save_offset = tp->tcol->offset;






 if (tp->tbl.cols == ((void*)0)) {
  borders_locale = tp->enc == TERMENC_UTF8 ?
      borders_utf8 : borders_ascii;

  tp->tbl.len = term_tbl_len;
  tp->tbl.slen = term_tbl_strlen;
  tp->tbl.sulen = term_tbl_sulen;
  tp->tbl.arg = tp;

  tblcalc(&tp->tbl, sp, tp->tcol->offset, tp->tcol->rmargin);



  term_tab_set(tp, ((void*)0));
  coloff = sp->opts->opts & (TBL_OPT_BOX | TBL_OPT_DBOX) ||
      sp->opts->lvert;
  for (ic = 0; ic < sp->opts->cols; ic++) {
   coloff += tp->tbl.cols[ic].width;
   term_tab_iset(coloff);
   coloff += tp->tbl.cols[ic].spacing;
  }



  offset = tp->tcol->offset;
  if (sp->opts->opts & TBL_OPT_CENTRE) {
   tsz = sp->opts->opts & (TBL_OPT_BOX | TBL_OPT_DBOX)
       ? 2 : !!sp->opts->lvert + !!sp->opts->rvert;
   for (ic = 0; ic + 1 < sp->opts->cols; ic++)
    tsz += tp->tbl.cols[ic].width +
        tp->tbl.cols[ic].spacing;
   if (sp->opts->cols)
    tsz += tp->tbl.cols[sp->opts->cols - 1].width;
   if (offset + tsz > tp->tcol->rmargin)
    tsz -= 1;
   offset = offset + tp->tcol->rmargin > tsz ?
       (offset + tp->tcol->rmargin - tsz) / 2 : 0;
   tp->tcol->offset = offset;
  }



  if (tp->enc == TERMENC_ASCII &&
      sp->opts->opts & TBL_OPT_DBOX)
   tbl_hrule(tp, ((void*)0), sp, sp, TBL_OPT_DBOX);
  if (sp->opts->opts & (TBL_OPT_DBOX | TBL_OPT_BOX))
   tbl_hrule(tp, ((void*)0), sp, sp, TBL_OPT_BOX);
 }



 tp->flags |= TERMP_MULTICOL;
 tp->tcol->offset = offset;
 horiz = 0;
 switch (sp->pos) {
 case 128:
 case 129:
  horiz = 1;
  term_setcol(tp, 1);
  break;
 case 130:
  term_setcol(tp, sp->opts->cols + 2);
  coloff = tp->tcol->offset;



  if (sp->opts->opts & (TBL_OPT_BOX | TBL_OPT_DBOX) ||
      sp->opts->lvert)
   coloff++;
  tp->tcol->rmargin = coloff;



  dp = sp->first;
  hspans = 0;
  for (ic = 0; ic < sp->opts->cols; ic++) {
   if (hspans == 0) {
    tp->tcol++;
    tp->tcol->offset = coloff;
   }
   coloff += tp->tbl.cols[ic].width;
   tp->tcol->rmargin = coloff;
   if (ic + 1 < sp->opts->cols)
    coloff += tp->tbl.cols[ic].spacing;
   if (hspans) {
    hspans--;
    continue;
   }
   if (dp == ((void*)0))
    continue;
   hspans = dp->hspans;
   if (ic || sp->layout->first->pos != TBL_CELL_SPAN)
    dp = dp->next;
  }



  tp->tcol++;
  tp->tcol->offset = coloff + 1;
  tp->tcol->rmargin = tp->maxrmargin;



  tp->lasttcol = tp->tcol - tp->tcols;



  tp->tcol = tp->tcols;
  cp = cpn = sp->layout->first;
  dp = sp->first;
  hspans = 0;
  for (ic = 0; ic < sp->opts->cols; ic++) {
   if (cpn != ((void*)0)) {
    cp = cpn;
    cpn = cpn->next;
   }
   if (hspans) {
    hspans--;
    continue;
   }
   tp->tcol++;
   tp->col = 0;
   tbl_data(tp, sp->opts, cp, dp, tp->tbl.cols + ic);
   if (dp == ((void*)0))
    continue;
   hspans = dp->hspans;
   if (cp->pos != TBL_CELL_SPAN)
    dp = dp->next;
  }
  break;
 }

 do {


  tp->tcol = tp->tcols;
  uvert = dvert = sp->opts->opts & TBL_OPT_DBOX ? 2 :
      sp->opts->opts & TBL_OPT_BOX ? 1 : 0;
  if (sp->pos == 130 && uvert < sp->layout->vert)
   uvert = dvert = sp->layout->vert;
  if (sp->next != ((void*)0) && sp->next->pos == 130 &&
      dvert < sp->next->layout->vert)
   dvert = sp->next->layout->vert;
  if (sp->prev != ((void*)0) && uvert < sp->prev->layout->vert &&
      (horiz || (IS_HORIZ(sp->layout->first) &&
        !IS_HORIZ(sp->prev->layout->first))))
   uvert = sp->prev->layout->vert;
  rhori = sp->pos == 129 ||
      (sp->first != ((void*)0) && sp->first->pos == TBL_DATA_DHORIZ) ||
      sp->layout->first->pos == 132 ? 2 :
      sp->pos == 128 ||
      (sp->first != ((void*)0) && sp->first->pos == TBL_DATA_HORIZ) ||
      sp->layout->first->pos == 131 ? 1 : 0;
  fc = BUP * uvert + BDOWN * dvert + BRIGHT * rhori;
  if (uvert > 0 || dvert > 0 || (horiz && sp->opts->lvert)) {
   (*tp->advance)(tp, tp->tcols->offset);
   tp->viscol = tp->tcol->offset;
   tbl_direct_border(tp, fc, 1);
  }



  more = 0;
  if (horiz)
   tbl_hrule(tp, sp->prev, sp, sp->next, 0);
  else {
   cp = sp->layout->first;
   cpn = sp->next == ((void*)0) ? ((void*)0) :
       sp->next->layout->first;
   cpp = sp->prev == ((void*)0) ? ((void*)0) :
       sp->prev->layout->first;
   dp = sp->first;
   hspans = 0;
   for (ic = 0; ic < sp->opts->cols; ic++) {







    uvert = dvert = fc = 0;
    if (cp != ((void*)0)) {
     cps = cp;
     while (cps->next != ((void*)0) &&
         cps->next->pos == TBL_CELL_SPAN)
      cps = cps->next;
     if (sp->pos == 130)
      uvert = dvert = cps->vert;
     switch (cp->pos) {
     case 131:
      fc = BHORIZ;
      break;
     case 132:
      fc = BHORIZ * 2;
      break;
     default:
      break;
     }
    }
    if (cpp != ((void*)0)) {
     if (uvert < cpp->vert &&
         cp != ((void*)0) &&
         ((IS_HORIZ(cp) &&
           !IS_HORIZ(cpp)) ||
          (cp->next != ((void*)0) &&
           cpp->next != ((void*)0) &&
           IS_HORIZ(cp->next) &&
           !IS_HORIZ(cpp->next))))
      uvert = cpp->vert;
     cpp = cpp->next;
    }
    if (sp->opts->opts & TBL_OPT_ALLBOX) {
     if (uvert == 0)
      uvert = 1;
     if (dvert == 0)
      dvert = 1;
    }
    if (cpn != ((void*)0)) {
     if (dvert == 0 ||
         (dvert < cpn->vert &&
          tp->enc == TERMENC_UTF8))
      dvert = cpn->vert;
     cpn = cpn->next;
    }

    lhori = (cp != ((void*)0) &&
         cp->pos == 132) ||
        (dp != ((void*)0) &&
         dp->pos == TBL_DATA_DHORIZ) ? 2 :
        (cp != ((void*)0) &&
         cp->pos == 131) ||
        (dp != ((void*)0) &&
         dp->pos == TBL_DATA_HORIZ) ? 1 : 0;







    if (hspans) {
     hspans--;
     cp = cp->next;
     continue;
    }
    if (dp != ((void*)0)) {
     hspans = dp->hspans;
     if (ic || sp->layout->first->pos
         != TBL_CELL_SPAN)
      dp = dp->next;
    }






    tp->tcol++;
    if (tp->tcol->col < tp->tcol->lastcol)
     term_flushln(tp);
    if (tp->tcol->col < tp->tcol->lastcol)
     more = 1;






    if (fc == 0 &&
        ((uvert == 0 && dvert == 0 &&
          cp != ((void*)0) && (cp->next == ((void*)0) ||
          !IS_HORIZ(cp->next))) ||
         tp->tcol + 1 ==
          tp->tcols + tp->lasttcol)) {
     if (cp != ((void*)0))
      cp = cp->next;
     continue;
    }

    if (tp->viscol < tp->tcol->rmargin) {
     (*tp->advance)(tp, tp->tcol->rmargin
        - tp->viscol);
     tp->viscol = tp->tcol->rmargin;
    }
    while (tp->viscol < tp->tcol->rmargin +
        tp->tbl.cols[ic].spacing / 2)
     tbl_direct_border(tp,
         BHORIZ * lhori, 1);

    if (tp->tcol + 1 == tp->tcols + tp->lasttcol)
     continue;

    if (cp != ((void*)0))
     cp = cp->next;

    rhori = (cp != ((void*)0) &&
         cp->pos == 132) ||
        (dp != ((void*)0) &&
         dp->pos == TBL_DATA_DHORIZ) ? 2 :
        (cp != ((void*)0) &&
         cp->pos == 131) ||
        (dp != ((void*)0) &&
         dp->pos == TBL_DATA_HORIZ) ? 1 : 0;

    if (tp->tbl.cols[ic].spacing)
     tbl_direct_border(tp,
         BLEFT * lhori + BRIGHT * rhori +
         BUP * uvert + BDOWN * dvert, 1);

    if (tp->enc == TERMENC_UTF8)
     uvert = dvert = 0;

    if (tp->tbl.cols[ic].spacing > 2 &&
        (uvert > 1 || dvert > 1 || rhori))
     tbl_direct_border(tp,
         BHORIZ * rhori +
         BUP * (uvert > 1) +
         BDOWN * (dvert > 1), 1);
   }
  }



  uvert = dvert = sp->opts->opts & TBL_OPT_DBOX ? 2 :
      sp->opts->opts & TBL_OPT_BOX ? 1 : 0;
  if (sp->pos == 130 &&
      uvert < sp->layout->last->vert &&
      sp->layout->last->col + 1 == sp->opts->cols)
   uvert = dvert = sp->layout->last->vert;
  if (sp->next != ((void*)0) &&
      dvert < sp->next->layout->last->vert &&
      sp->next->layout->last->col + 1 == sp->opts->cols)
   dvert = sp->next->layout->last->vert;
  if (sp->prev != ((void*)0) &&
      uvert < sp->prev->layout->last->vert &&
      sp->prev->layout->last->col + 1 == sp->opts->cols &&
      (horiz || (IS_HORIZ(sp->layout->last) &&
       !IS_HORIZ(sp->prev->layout->last))))
   uvert = sp->prev->layout->last->vert;
  lhori = sp->pos == 129 ||
      (sp->last != ((void*)0) &&
       sp->last->pos == TBL_DATA_DHORIZ &&
       sp->last->layout->col + 1 == sp->opts->cols) ||
      (sp->layout->last->pos == 132 &&
       sp->layout->last->col + 1 == sp->opts->cols) ? 2 :
      sp->pos == 128 ||
      (sp->last != ((void*)0) &&
       sp->last->pos == TBL_DATA_HORIZ &&
       sp->last->layout->col + 1 == sp->opts->cols) ||
      (sp->layout->last->pos == 131 &&
       sp->layout->last->col + 1 == sp->opts->cols) ? 1 : 0;
  fc = BUP * uvert + BDOWN * dvert + BLEFT * lhori;
  if (uvert > 0 || dvert > 0 || (horiz && sp->opts->rvert)) {
   if (horiz == 0 && (IS_HORIZ(sp->layout->last) == 0 ||
       sp->layout->last->col + 1 < sp->opts->cols)) {
    tp->tcol++;
    do {
     tbl_direct_border(tp,
         BHORIZ * lhori, 1);
    } while (tp->viscol < tp->tcol->offset);
   }
   tbl_direct_border(tp, fc, 1);
  }
  (*tp->endline)(tp);
  tp->viscol = 0;
 } while (more);







 term_setcol(tp, 1);
 tp->flags &= ~TERMP_MULTICOL;
 tp->tcol->rmargin = tp->maxrmargin;
 if (sp->next == ((void*)0)) {
  if (sp->opts->opts & (TBL_OPT_DBOX | TBL_OPT_BOX)) {
   tbl_hrule(tp, sp, sp, ((void*)0), TBL_OPT_BOX);
   tp->skipvsp = 1;
  }
  if (tp->enc == TERMENC_ASCII &&
      sp->opts->opts & TBL_OPT_DBOX) {
   tbl_hrule(tp, sp, sp, ((void*)0), TBL_OPT_DBOX);
   tp->skipvsp = 2;
  }
  assert(tp->tbl.cols);
  free(tp->tbl.cols);
  tp->tbl.cols = ((void*)0);
 } else if (horiz == 0 && sp->opts->opts & TBL_OPT_ALLBOX &&
     (sp->next == ((void*)0) || sp->next->pos == 130 ||
      sp->next->next != ((void*)0)))
  tbl_hrule(tp, sp, sp, sp->next, TBL_OPT_ALLBOX);

 tp->tcol->offset = save_offset;
 tp->flags &= ~TERMP_NONOSPACE;
}
