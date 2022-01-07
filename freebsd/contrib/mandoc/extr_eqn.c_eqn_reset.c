
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {scalar_t__ toksz; scalar_t__ sz; int * end; int start; int data; } ;


 int free (int ) ;

void
eqn_reset(struct eqn_node *ep)
{
 free(ep->data);
 ep->data = ep->start = ep->end = ((void*)0);
 ep->sz = ep->toksz = 0;
}
