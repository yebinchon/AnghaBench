
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff {int * tbl; TYPE_3__* eqn; TYPE_2__* last; } ;
struct TYPE_6__ {TYPE_1__* node; } ;
struct TYPE_5__ {size_t tok; int col; int line; } ;
struct TYPE_4__ {int pos; int line; } ;


 int MANDOCERR_BLK_NOEND ;
 int eqn_parse (TYPE_3__*) ;
 int mandoc_msg (int ,int ,int ,char*,...) ;
 int * roff_name ;
 int tbl_end (int *,int) ;

void
roff_endparse(struct roff *r)
{
 if (r->last != ((void*)0))
  mandoc_msg(MANDOCERR_BLK_NOEND, r->last->line,
      r->last->col, "%s", roff_name[r->last->tok]);

 if (r->eqn != ((void*)0)) {
  mandoc_msg(MANDOCERR_BLK_NOEND,
      r->eqn->node->line, r->eqn->node->pos, "EQ");
  eqn_parse(r->eqn);
  r->eqn = ((void*)0);
 }

 if (r->tbl != ((void*)0)) {
  tbl_end(r->tbl, 1);
  r->tbl = ((void*)0);
 }
}
