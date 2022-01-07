
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
typedef int cset ;
struct TYPE_2__ {size_t ncsets; int csetsize; int * sets; } ;


 int CHsub (int *,size_t) ;

__attribute__((used)) static void
freeset(struct parse *p, cset *cs)
{
 size_t i;
 cset *top = &p->g->sets[p->g->ncsets];
 size_t css = (size_t)p->g->csetsize;

 for (i = 0; i < css; i++)
  CHsub(cs, i);
 if (cs == top-1)
  p->g->ncsets--;
}
