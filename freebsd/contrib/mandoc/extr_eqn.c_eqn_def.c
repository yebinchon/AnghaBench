
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eqn_node {scalar_t__ toksz; int start; TYPE_1__* node; struct eqn_def* defs; scalar_t__ defsz; } ;
struct eqn_def {scalar_t__ keysz; scalar_t__ valsz; int * val; int * key; } ;
struct TYPE_2__ {int pos; int line; } ;


 scalar_t__ EQN_TOK_EOF ;
 int MANDOCERR_REQ_EMPTY ;
 int MODE_NOSUB ;
 int MODE_QUOTED ;
 struct eqn_def* eqn_def_find (struct eqn_node*) ;
 scalar_t__ eqn_next (struct eqn_node*,int ) ;
 int free (int *) ;
 int mandoc_msg (int ,int ,int ,char*,...) ;
 struct eqn_def* mandoc_reallocarray (struct eqn_def*,scalar_t__,int) ;
 void* mandoc_strndup (int ,scalar_t__) ;

__attribute__((used)) static void
eqn_def(struct eqn_node *ep)
{
 struct eqn_def *def;
 int i;

 if (eqn_next(ep, MODE_NOSUB) == EQN_TOK_EOF) {
  mandoc_msg(MANDOCERR_REQ_EMPTY,
      ep->node->line, ep->node->pos, "define");
  return;
 }





 if ((def = eqn_def_find(ep)) == ((void*)0)) {

  for (i = 0; i < (int)ep->defsz; i++)
   if (0 == ep->defs[i].keysz)
    break;

  if (i == (int)ep->defsz) {
   ep->defsz++;
   ep->defs = mandoc_reallocarray(ep->defs,
       ep->defsz, sizeof(struct eqn_def));
   ep->defs[i].key = ep->defs[i].val = ((void*)0);
  }

  def = ep->defs + i;
  free(def->key);
  def->key = mandoc_strndup(ep->start, ep->toksz);
  def->keysz = ep->toksz;
 }

 if (eqn_next(ep, MODE_QUOTED) == EQN_TOK_EOF) {
  mandoc_msg(MANDOCERR_REQ_EMPTY,
      ep->node->line, ep->node->pos, "define %s", def->key);
  free(def->key);
  free(def->val);
  def->key = def->val = ((void*)0);
  def->keysz = def->valsz = 0;
  return;
 }
 free(def->val);
 def->val = mandoc_strndup(ep->start, ep->toksz);
 def->valsz = ep->toksz;
}
