
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eqn_node {TYPE_1__* node; } ;
struct eqn_def {scalar_t__ valsz; scalar_t__ keysz; int * val; int * key; } ;
struct TYPE_2__ {int pos; int line; } ;


 scalar_t__ EQN_TOK_EOF ;
 int MANDOCERR_REQ_EMPTY ;
 int MODE_NOSUB ;
 struct eqn_def* eqn_def_find (struct eqn_node*) ;
 scalar_t__ eqn_next (struct eqn_node*,int ) ;
 int free (int *) ;
 int mandoc_msg (int ,int ,int ,char*) ;

__attribute__((used)) static void
eqn_undef(struct eqn_node *ep)
{
 struct eqn_def *def;

 if (eqn_next(ep, MODE_NOSUB) == EQN_TOK_EOF) {
  mandoc_msg(MANDOCERR_REQ_EMPTY,
      ep->node->line, ep->node->pos, "undef");
  return;
 }
 if ((def = eqn_def_find(ep)) == ((void*)0))
  return;
 free(def->key);
 free(def->val);
 def->key = def->val = ((void*)0);
 def->keysz = def->valsz = 0;
}
