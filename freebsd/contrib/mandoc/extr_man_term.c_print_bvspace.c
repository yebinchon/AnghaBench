
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct termp {int dummy; } ;
struct roff_node {int * prev; TYPE_1__* parent; TYPE_2__* body; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_3__* child; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ tok; } ;


 scalar_t__ MAN_RS ;
 scalar_t__ ROFFT_ROOT ;
 scalar_t__ ROFFT_TBL ;
 int term_newln (struct termp*) ;
 int term_vspace (struct termp*) ;

__attribute__((used)) static void
print_bvspace(struct termp *p, const struct roff_node *n, int pardist)
{
 int i;

 term_newln(p);

 if (n->body != ((void*)0) && n->body->child != ((void*)0))
  if (n->body->child->type == ROFFT_TBL)
   return;

 if (n->parent->type == ROFFT_ROOT || n->parent->tok != MAN_RS)
  if (n->prev == ((void*)0))
   return;

 for (i = 0; i < pardist; i++)
  term_vspace(p);
}
