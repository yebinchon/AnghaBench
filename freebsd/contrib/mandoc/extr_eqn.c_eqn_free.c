
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {struct eqn_node* defs; struct eqn_node* data; struct eqn_node* val; struct eqn_node* key; scalar_t__ defsz; } ;


 int free (struct eqn_node*) ;

void
eqn_free(struct eqn_node *p)
{
 int i;

 if (p == ((void*)0))
  return;

 for (i = 0; i < (int)p->defsz; i++) {
  free(p->defs[i].key);
  free(p->defs[i].val);
 }

 free(p->data);
 free(p->defs);
 free(p);
}
