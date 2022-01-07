
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uch ;
struct parse {TYPE_1__* g; } ;
struct TYPE_7__ {scalar_t__ hash; } ;
typedef TYPE_2__ cset ;
struct TYPE_6__ {size_t ncsets; TYPE_2__* sets; int csetsize; } ;


 int CHIN (TYPE_2__*,size_t) ;
 int freeset (struct parse*,TYPE_2__*) ;

__attribute__((used)) static int
freezeset(struct parse *p, cset *cs)
{
 uch h = cs->hash;
 size_t i;
 cset *top = &p->g->sets[p->g->ncsets];
 cset *cs2;
 size_t css = (size_t)p->g->csetsize;


 for (cs2 = &p->g->sets[0]; cs2 < top; cs2++)
  if (cs2->hash == h && cs2 != cs) {

   for (i = 0; i < css; i++)
    if (!!CHIN(cs2, i) != !!CHIN(cs, i))
     break;
   if (i == css)
    break;
  }

 if (cs2 < top) {
  freeset(p, cs);
  cs = cs2;
 }

 return((int)(cs - p->g->sets));
}
