
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eqn_node {struct eqn_def* defs; int toksz; int start; scalar_t__ defsz; } ;
struct eqn_def {scalar_t__ keysz; int key; } ;


 scalar_t__ STRNEQ (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static struct eqn_def *
eqn_def_find(struct eqn_node *ep)
{
 int i;

 for (i = 0; i < (int)ep->defsz; i++)
  if (ep->defs[i].keysz && STRNEQ(ep->defs[i].key,
      ep->defs[i].keysz, ep->start, ep->toksz))
   return &ep->defs[i];

 return ((void*)0);
}
