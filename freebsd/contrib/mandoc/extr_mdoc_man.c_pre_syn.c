
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int flags; scalar_t__ tok; TYPE_1__* prev; } ;
struct TYPE_2__ {scalar_t__ tok; } ;
 int MMAN_br ;
 int MMAN_sp ;
 int NODE_SYNPRETTY ;
 int outflags ;

__attribute__((used)) static void
pre_syn(const struct roff_node *n)
{

 if (((void*)0) == n->prev || ! (NODE_SYNPRETTY & n->flags))
  return;

 if (n->prev->tok == n->tok &&
     130 != n->tok &&
     131 != n->tok &&
     132 != n->tok) {
  outflags |= MMAN_br;
  return;
 }

 switch (n->prev->tok) {
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  outflags |= MMAN_sp;
  break;
 case 130:
  if (132 != n->tok && 131 != n->tok) {
   outflags |= MMAN_sp;
   break;
  }

 default:
  outflags |= MMAN_br;
  break;
 }
}
