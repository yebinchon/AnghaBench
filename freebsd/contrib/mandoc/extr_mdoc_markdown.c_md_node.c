
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {scalar_t__ type; int flags; int tok; scalar_t__ end; TYPE_1__* body; int * child; int string; } ;
struct md_act {int (* pre ) (struct roff_node*) ;int (* post ) (struct roff_node*) ;scalar_t__ (* cond ) (struct roff_node*) ;} ;
struct TYPE_2__ {int flags; } ;


 scalar_t__ ENDBODY_NOT ;
 int MD_Sm ;
 int MD_nl ;
 int MD_nonl ;
 int MD_sp ;
 int MD_spc ;
 int MD_spc_force ;
 int NODE_DELIMC ;
 int NODE_DELIMO ;
 int NODE_ENDED ;
 int NODE_LINE ;
 int NODE_NOPRT ;
 scalar_t__ ROFFT_COMMENT ;
 scalar_t__ ROFFT_TEXT ;
 int ROFF_MAX ;


 struct md_act* md_act (int) ;
 int md_nodelist (int *) ;
 int md_pre_Pp (struct roff_node*) ;
 int md_pre_br (struct roff_node*) ;
 int md_word (int ) ;
 int outflags ;
 scalar_t__ stub1 (struct roff_node*) ;
 int stub2 (struct roff_node*) ;
 int stub3 (struct roff_node*) ;

__attribute__((used)) static void
md_node(struct roff_node *n)
{
 const struct md_act *act;
 int cond, process_children;

 if (n->type == ROFFT_COMMENT || n->flags & NODE_NOPRT)
  return;

 if (outflags & MD_nonl)
  outflags &= ~(MD_nl | MD_sp);
 else if (outflags & MD_spc && n->flags & NODE_LINE)
  outflags |= MD_nl;

 act = ((void*)0);
 cond = 0;
 process_children = 1;
 n->flags &= ~NODE_ENDED;

 if (n->type == ROFFT_TEXT) {
  if (n->flags & NODE_DELIMC)
   outflags &= ~(MD_spc | MD_spc_force);
  else if (outflags & MD_Sm)
   outflags |= MD_spc_force;
  md_word(n->string);
  if (n->flags & NODE_DELIMO)
   outflags &= ~(MD_spc | MD_spc_force);
  else if (outflags & MD_Sm)
   outflags |= MD_spc;
 } else if (n->tok < ROFF_MAX) {
  switch (n->tok) {
  case 129:
   process_children = md_pre_br(n);
   break;
  case 128:
   process_children = md_pre_Pp(n);
   break;
  default:
   process_children = 0;
   break;
  }
 } else {
  act = md_act(n->tok);
  cond = act->cond == ((void*)0) || (*act->cond)(n);
  if (cond && act->pre != ((void*)0) &&
      (n->end == ENDBODY_NOT || n->child != ((void*)0)))
   process_children = (*act->pre)(n);
 }

 if (process_children && n->child != ((void*)0))
  md_nodelist(n->child);

 if (n->flags & NODE_ENDED)
  return;

 if (cond && act->post != ((void*)0))
  (*act->post)(n);

 if (n->end != ENDBODY_NOT)
  n->body->flags |= NODE_ENDED;
}
