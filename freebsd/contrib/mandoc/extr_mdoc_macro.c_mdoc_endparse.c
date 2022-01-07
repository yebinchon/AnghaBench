
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct roff_node {int flags; scalar_t__ type; size_t tok; int pos; int line; struct roff_node* parent; } ;
struct TYPE_3__ {int first; } ;
struct roff_man {TYPE_1__ meta; struct roff_node* last; } ;
struct TYPE_4__ {int flags; } ;


 int MANDOCERR_BLK_NOEND ;
 int MDOC_EXPLICIT ;
 int NODE_VALID ;
 scalar_t__ ROFFT_BLOCK ;
 int mandoc_msg (int ,int ,int ,char*,int ) ;
 TYPE_2__* mdoc_macro (size_t) ;
 int rew_last (struct roff_man*,int ) ;
 int * roff_name ;

void
mdoc_endparse(struct roff_man *mdoc)
{
 struct roff_node *n;



 n = mdoc->last->flags & NODE_VALID ?
     mdoc->last->parent : mdoc->last;

 for ( ; n; n = n->parent)
  if (n->type == ROFFT_BLOCK &&
      mdoc_macro(n->tok)->flags & MDOC_EXPLICIT)
   mandoc_msg(MANDOCERR_BLK_NOEND,
       n->line, n->pos, "%s", roff_name[n->tok]);



 rew_last(mdoc, mdoc->meta.first);
}
