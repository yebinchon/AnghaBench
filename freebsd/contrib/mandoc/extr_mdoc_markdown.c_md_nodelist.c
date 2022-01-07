
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {struct roff_node* next; } ;


 int md_node (struct roff_node*) ;

__attribute__((used)) static void
md_nodelist(struct roff_node *n)
{
 while (n != ((void*)0)) {
  md_node(n);
  n = n->next;
 }
}
