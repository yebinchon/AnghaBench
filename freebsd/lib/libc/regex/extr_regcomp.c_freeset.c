
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
struct TYPE_6__ {int types; int ranges; int wides; } ;
typedef TYPE_2__ cset ;
struct TYPE_5__ {size_t ncsets; TYPE_2__* sets; } ;


 int free (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
freeset(struct parse *p, cset *cs)
{
 cset *top = &p->g->sets[p->g->ncsets];

 free(cs->wides);
 free(cs->ranges);
 free(cs->types);
 memset(cs, 0, sizeof(*cs));
 if (cs == top-1)
  p->g->ncsets--;
}
