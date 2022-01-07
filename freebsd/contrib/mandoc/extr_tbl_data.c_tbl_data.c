
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tbl_span {scalar_t__ pos; struct tbl_row* layout; } ;
struct tbl_row {struct tbl_row* next; struct tbl_cell* first; TYPE_1__* last; } ;
struct TYPE_4__ {scalar_t__ cols; } ;
struct tbl_node {TYPE_2__ opts; struct tbl_row* first_row; struct tbl_span* last_span; } ;
struct tbl_cell {scalar_t__ pos; struct tbl_cell* next; } ;
struct TYPE_3__ {scalar_t__ col; } ;


 scalar_t__ TBL_CELL_DHORIZ ;
 scalar_t__ TBL_CELL_HORIZ ;
 scalar_t__ TBL_SPAN_DATA ;
 scalar_t__ TBL_SPAN_DHORIZ ;
 scalar_t__ TBL_SPAN_HORIZ ;
 int assert (int ) ;
 int getdata (struct tbl_node*,struct tbl_span*,int,char const*,int*) ;
 struct tbl_span* newspan (struct tbl_node*,int,struct tbl_row*) ;

void
tbl_data(struct tbl_node *tbl, int ln, const char *p, int pos)
{
 struct tbl_row *rp;
 struct tbl_cell *cp;
 struct tbl_span *sp;

 rp = (sp = tbl->last_span) == ((void*)0) ? tbl->first_row :
     sp->pos == TBL_SPAN_DATA && sp->layout->next != ((void*)0) ?
     sp->layout->next : sp->layout;

 assert(rp != ((void*)0));

 if (p[1] == '\0') {
  switch (p[0]) {
  case '.':






   return;
  case '_':
   sp = newspan(tbl, ln, rp);
   sp->pos = TBL_SPAN_HORIZ;
   return;
  case '=':
   sp = newspan(tbl, ln, rp);
   sp->pos = TBL_SPAN_DHORIZ;
   return;
  default:
   break;
  }
 }







 while (rp->next != ((void*)0)) {
  if (rp->last->col + 1 < tbl->opts.cols)
   break;
  for (cp = rp->first; cp != ((void*)0); cp = cp->next)
   if (cp->pos != TBL_CELL_HORIZ &&
       cp->pos != TBL_CELL_DHORIZ)
    break;
  if (cp != ((void*)0))
   break;
  sp = newspan(tbl, ln, rp);
  sp->pos = TBL_SPAN_DATA;
  rp = rp->next;
 }



 sp = newspan(tbl, ln, rp);
 sp->pos = TBL_SPAN_DATA;
 while (p[pos] != '\0')
  getdata(tbl, sp, ln, p, &pos);
}
