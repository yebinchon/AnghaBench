
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eqn_node {char* end; int delim; scalar_t__ cdelim; scalar_t__ odelim; TYPE_1__* node; } ;
struct TYPE_2__ {int pos; int line; } ;


 int MANDOCERR_REQ_EMPTY ;
 int mandoc_msg (int ,int ,int ,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
eqn_delim(struct eqn_node *ep)
{
 if (ep->end[0] == '\0' || ep->end[1] == '\0') {
  mandoc_msg(MANDOCERR_REQ_EMPTY,
      ep->node->line, ep->node->pos, "delim");
  if (ep->end[0] != '\0')
   ep->end++;
 } else if (strncmp(ep->end, "off", 3) == 0) {
  ep->delim = 0;
  ep->end += 3;
 } else if (strncmp(ep->end, "on", 2) == 0) {
  if (ep->odelim && ep->cdelim)
   ep->delim = 1;
  ep->end += 2;
 } else {
  ep->odelim = *ep->end++;
  ep->cdelim = *ep->end++;
  ep->delim = 1;
 }
}
