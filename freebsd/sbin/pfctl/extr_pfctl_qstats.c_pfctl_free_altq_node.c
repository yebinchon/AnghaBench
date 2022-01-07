
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_altq_node {struct pf_altq_node* next; struct pf_altq_node* children; } ;


 int free (struct pf_altq_node*) ;

void
pfctl_free_altq_node(struct pf_altq_node *node)
{
 while (node != ((void*)0)) {
  struct pf_altq_node *prev;

  if (node->children != ((void*)0))
   pfctl_free_altq_node(node->children);
  prev = node;
  node = node->next;
  free(prev);
 }
}
