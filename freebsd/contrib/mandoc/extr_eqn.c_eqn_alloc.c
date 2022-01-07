
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {int gsize; } ;


 int EQN_DEFSIZE ;
 struct eqn_node* mandoc_calloc (int,int) ;

struct eqn_node *
eqn_alloc(void)
{
 struct eqn_node *ep;

 ep = mandoc_calloc(1, sizeof(*ep));
 ep->gsize = EQN_DEFSIZE;
 return ep;
}
