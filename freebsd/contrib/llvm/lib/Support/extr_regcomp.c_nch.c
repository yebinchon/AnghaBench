
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
typedef int cset ;
struct TYPE_2__ {int csetsize; } ;


 scalar_t__ CHIN (int *,size_t) ;

__attribute__((used)) static int
nch(struct parse *p, cset *cs)
{
 size_t i;
 size_t css = (size_t)p->g->csetsize;
 int n = 0;

 for (i = 0; i < css; i++)
  if (CHIN(cs, i))
   n++;
 return(n);
}
