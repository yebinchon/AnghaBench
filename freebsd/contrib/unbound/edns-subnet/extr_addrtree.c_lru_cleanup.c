
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct addrtree {scalar_t__ max_node_count; scalar_t__ node_count; struct addrnode* first; } ;
struct addrnode {TYPE_1__* parent_edge; int elem; int ** edge; } ;
struct TYPE_2__ {struct addrnode* parent_node; } ;


 int lru_update (struct addrtree*,struct addrnode*) ;
 int purge_node (struct addrtree*,struct addrnode*) ;

__attribute__((used)) static void
lru_cleanup(struct addrtree *tree)
{
 struct addrnode *n, *p;
 int children;
 if (tree->max_node_count == 0) return;
 while (tree->node_count > tree->max_node_count) {
  n = tree->first;
  if (!n) break;
  children = (n->edge[0] != ((void*)0)) + (n->edge[1] != ((void*)0));


  if (children == 2 || !n->parent_edge) {
   lru_update(tree, n);
   continue;
  }
  p = n->parent_edge->parent_node;
  purge_node(tree, n);



  children = (p->edge[0] != ((void*)0)) + (p->edge[1] != ((void*)0));
  if (!p->elem && children == 1 && p->parent_edge) {
   purge_node(tree, p);
  }
 }
}
