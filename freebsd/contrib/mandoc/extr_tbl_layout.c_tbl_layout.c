
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tbl_row {struct tbl_row* next; int * first; TYPE_2__* last; int vert; } ;
struct TYPE_3__ {int rvert; int cols; int lvert; } ;
struct tbl_node {struct tbl_row* last_row; struct tbl_row* first_row; TYPE_1__ opts; int part; } ;
struct TYPE_4__ {int vert; int col; } ;


 int MANDOCERR_TBLLAYOUT_NONE ;
 int TBL_CELL_LEFT ;
 int TBL_PART_DATA ;
 int cell (struct tbl_node*,struct tbl_row*,int,char const*,int*) ;
 int cell_alloc (struct tbl_node*,struct tbl_row*,int ) ;
 int free (struct tbl_row*) ;
 void* mandoc_calloc (int,int) ;
 int mandoc_msg (int ,int,int,int *) ;

void
tbl_layout(struct tbl_node *tbl, int ln, const char *p, int pos)
{
 struct tbl_row *rp;

 rp = ((void*)0);
 for (;;) {


  while (p[pos] == ' ' || p[pos] == '\t')
   pos++;

  switch (p[pos]) {
  case ',':
   pos++;
   rp = ((void*)0);
   continue;
  case '\0':
   return;
  case '.':
   pos++;
   tbl->part = TBL_PART_DATA;






   if (tbl->first_row == ((void*)0)) {
    tbl->first_row = tbl->last_row =
        mandoc_calloc(1, sizeof(*rp));
   }
   if (tbl->first_row->first == ((void*)0)) {
    mandoc_msg(MANDOCERR_TBLLAYOUT_NONE,
        ln, pos, ((void*)0));
    cell_alloc(tbl, tbl->first_row,
        TBL_CELL_LEFT);
    if (tbl->opts.lvert < tbl->first_row->vert)
     tbl->opts.lvert = tbl->first_row->vert;
    return;
   }






   for (rp = tbl->first_row; rp; rp = rp->next) {
    if (tbl->opts.lvert < rp->vert)
     tbl->opts.lvert = rp->vert;
    if (rp->last != ((void*)0) &&
        rp->last->col + 1 == tbl->opts.cols &&
        tbl->opts.rvert < rp->last->vert)
     tbl->opts.rvert = rp->last->vert;



    if (rp->next != ((void*)0) &&
        rp->next->first == ((void*)0)) {
     free(rp->next);
     rp->next = ((void*)0);
     tbl->last_row = rp;
    }
   }
   return;
  default:
   break;
  }






  if (rp == ((void*)0)) {
   if (tbl->last_row == ((void*)0) ||
       tbl->last_row->first != ((void*)0)) {
    rp = mandoc_calloc(1, sizeof(*rp));
    if (tbl->last_row)
     tbl->last_row->next = rp;
    else
     tbl->first_row = rp;
    tbl->last_row = rp;
   } else
    rp = tbl->last_row;
  }
  cell(tbl, rp, ln, p, &pos);
 }
}
