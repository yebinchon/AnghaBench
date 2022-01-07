
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrtree {struct addrnode* last; struct addrnode* first; } ;
struct addrnode {struct addrnode* prev; struct addrnode* next; } ;



__attribute__((used)) static void
lru_pop(struct addrtree *tree, struct addrnode *node)
{
 if (node == tree->first) {
  if (!node->next) {
   tree->first = ((void*)0);
   tree->last = ((void*)0);
  } else {
   tree->first = node->next;
   tree->first->prev = ((void*)0);
  }
 } else if (node == tree->last) {
  tree->last = node->prev;
  tree->last->next = ((void*)0);
 } else {
  node->prev->next = node->next;
  node->next->prev = node->prev;
 }
}
