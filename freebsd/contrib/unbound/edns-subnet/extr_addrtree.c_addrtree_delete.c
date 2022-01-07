
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {int size_bytes; struct addrtree* parent_edge; struct addrtree* str; struct addrtree* next; struct addrtree* first; struct addrtree* root; } ;
struct addrnode {int size_bytes; struct addrnode* parent_edge; struct addrnode* str; struct addrnode* next; struct addrnode* first; struct addrnode* root; } ;


 int addrtree_size (struct addrtree*) ;
 int clean_node (struct addrtree*,struct addrtree*) ;
 int free (struct addrtree*) ;
 int log_assert (int) ;
 scalar_t__ node_size (struct addrtree*,struct addrtree*) ;

void addrtree_delete(struct addrtree *tree)
{
 struct addrnode *n;
 if (!tree) return;
 clean_node(tree, tree->root);
 free(tree->root);
 tree->size_bytes -= sizeof(struct addrnode);
 while ((n = tree->first)) {
  tree->first = n->next;
  clean_node(tree, n);
  tree->size_bytes -= node_size(tree, n);
  free(n->parent_edge->str);
  free(n->parent_edge);
  free(n);
 }
 log_assert(sizeof *tree == addrtree_size(tree));
 free(tree);
}
