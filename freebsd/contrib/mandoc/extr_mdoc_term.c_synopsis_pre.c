
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int dummy; } ;
struct roff_node {int flags; scalar_t__ tok; TYPE_1__* prev; } ;
struct TYPE_2__ {scalar_t__ tok; } ;
 int NODE_SYNPRETTY ;
 int term_newln (struct termp*) ;
 int term_vspace (struct termp*) ;

__attribute__((used)) static void
synopsis_pre(struct termp *p, const struct roff_node *n)
{




 if (((void*)0) == n->prev || ! (NODE_SYNPRETTY & n->flags))
  return;






 if (n->prev->tok == n->tok &&
     130 != n->tok &&
     131 != n->tok &&
     132 != n->tok) {
  term_newln(p);
  return;
 }






 switch (n->prev->tok) {
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  term_vspace(p);
  break;
 case 130:
  if (132 != n->tok && 131 != n->tok) {
   term_vspace(p);
   break;
  }

 default:
  term_newln(p);
  break;
 }
}
