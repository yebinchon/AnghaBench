
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {struct addrnode* last; struct addrnode* first; } ;
struct addrnode {struct addrnode* next; struct addrnode* prev; } ;



__attribute__((used)) static void
lru_push(struct addrtree *tree, struct addrnode *node)
{
 if (!tree->first) {
  tree->first = node;
  node->prev = ((void*)0);
 } else {
  tree->last->next = node;
  node->prev = tree->last;
 }
 tree->last = node;
 node->next = ((void*)0);
}
