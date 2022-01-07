
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {int flags; int pos; int line; struct roff_node* next; struct roff_node* parent; } ;
struct roff_man {struct roff_node* last; int next; } ;


 int NODE_DELIMC ;
 int NODE_NOSRC ;
 int ROFF_NEXT_SIBLING ;
 int roff_elem_alloc (struct roff_man*,int ,int ,int) ;
 int roff_node_relink (struct roff_man*,struct roff_node*) ;
 int roff_word_alloc (struct roff_man*,int ,int ,char*) ;

__attribute__((used)) static int
build_list(struct roff_man *mdoc, int tok)
{
 struct roff_node *n;
 int ic;

 n = mdoc->last->next;
 for (ic = 1;; ic++) {
  roff_elem_alloc(mdoc, n->line, n->pos, tok);
  mdoc->last->flags |= NODE_NOSRC;
  roff_node_relink(mdoc, n);
  n = mdoc->last = mdoc->last->parent;
  mdoc->next = ROFF_NEXT_SIBLING;
  if (n->next == ((void*)0))
   return ic;
  if (ic > 1 || n->next->next != ((void*)0)) {
   roff_word_alloc(mdoc, n->line, n->pos, ",");
   mdoc->last->flags |= NODE_DELIMC | NODE_NOSRC;
  }
  n = mdoc->last->next;
  if (n->next == ((void*)0)) {
   roff_word_alloc(mdoc, n->line, n->pos, "and");
   mdoc->last->flags |= NODE_NOSRC;
  }
 }
}
