
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* term_margin ;
struct termp {int (* begin ) (struct termp*) ;struct roff_meta const* argf; void* footf; void* headf; } ;
struct roff_meta {int dummy; } ;


 int stub1 (struct termp*) ;

void
term_begin(struct termp *p, term_margin head,
  term_margin foot, const struct roff_meta *arg)
{

 p->headf = head;
 p->footf = foot;
 p->argf = arg;
 (*p->begin)(p);
}
