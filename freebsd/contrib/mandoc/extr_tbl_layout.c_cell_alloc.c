
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tbl_row {struct tbl_cell* last; struct tbl_cell* first; } ;
struct TYPE_2__ {scalar_t__ cols; } ;
struct tbl_node {TYPE_1__ opts; } ;
struct tbl_cell {int pos; scalar_t__ col; struct tbl_cell* next; int spacing; } ;
typedef enum tbl_cellt { ____Placeholder_tbl_cellt } tbl_cellt ;


 int SIZE_MAX ;
 struct tbl_cell* mandoc_calloc (int,int) ;

__attribute__((used)) static struct tbl_cell *
cell_alloc(struct tbl_node *tbl, struct tbl_row *rp, enum tbl_cellt pos)
{
 struct tbl_cell *p, *pp;

 p = mandoc_calloc(1, sizeof(*p));
 p->spacing = SIZE_MAX;
 p->pos = pos;

 if ((pp = rp->last) != ((void*)0)) {
  pp->next = p;
  p->col = pp->col + 1;
 } else
  rp->first = p;
 rp->last = p;

 if (tbl->opts.cols <= p->col)
  tbl->opts.cols = p->col + 1;

 return p;
}
