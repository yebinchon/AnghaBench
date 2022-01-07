
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct roff_node {int flags; scalar_t__ tok; TYPE_1__* prev; } ;
struct html {int dummy; } ;
struct TYPE_2__ {scalar_t__ tok; } ;
 int NODE_SYNPRETTY ;
 int TAG_BR ;
 int TAG_P ;
 int html_close_paragraph (struct html*) ;
 int print_otag (struct html*,int ,char*,...) ;

__attribute__((used)) static void
synopsis_pre(struct html *h, const struct roff_node *n)
{

 if (((void*)0) == n->prev || ! (NODE_SYNPRETTY & n->flags))
  return;

 if (n->prev->tok == n->tok &&
     131 != n->tok &&
     130 != n->tok &&
     132 != n->tok) {
  print_otag(h, TAG_BR, "");
  return;
 }

 switch (n->prev->tok) {
 case 133:
 case 132:
 case 131:
 case 129:
 case 128:
  break;
 case 130:
  if (n->tok != 132 && n->tok != 131)
   break;

 default:
  print_otag(h, TAG_BR, "");
  return;
 }
 html_close_paragraph(h);
 print_otag(h, TAG_P, "c", "Pp");
}
