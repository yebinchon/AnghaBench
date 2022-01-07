
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff_node {scalar_t__ type; struct roff_node* string; int eqn; struct roff_node* norm; int * args; } ;


 scalar_t__ ROFFT_BLOCK ;
 scalar_t__ ROFFT_ELEM ;
 int eqn_box_free (int ) ;
 int free (struct roff_node*) ;
 int mdoc_argv_free (int *) ;

void
roff_node_free(struct roff_node *n)
{

 if (n->args != ((void*)0))
  mdoc_argv_free(n->args);
 if (n->type == ROFFT_BLOCK || n->type == ROFFT_ELEM)
  free(n->norm);
 eqn_box_free(n->eqn);
 free(n->string);
 free(n);
}
