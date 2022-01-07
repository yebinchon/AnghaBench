
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct roff_node {scalar_t__ tok; TYPE_2__* next; TYPE_3__* prev; TYPE_1__* parent; } ;
struct TYPE_6__ {scalar_t__ tok; } ;
struct TYPE_5__ {scalar_t__ tok; } ;
struct TYPE_4__ {scalar_t__ tok; } ;


 scalar_t__ MDOC_Rs ;
 int MD_nl ;
 int md_post_raw (struct roff_node*) ;
 int md_word (char*) ;
 int outflags ;

__attribute__((used)) static void
md_post_pc(struct roff_node *n)
{
 md_post_raw(n);
 if (n->parent->tok != MDOC_Rs)
  return;
 if (n->next != ((void*)0)) {
  md_word(",");
  if (n->prev != ((void*)0) &&
      n->prev->tok == n->tok &&
      n->next->tok == n->tok)
   md_word("and");
 } else {
  md_word(".");
  outflags |= MD_nl;
 }
}
