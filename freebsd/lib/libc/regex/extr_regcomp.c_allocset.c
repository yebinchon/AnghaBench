
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parse {TYPE_1__* g; } ;
typedef int cset ;
struct TYPE_2__ {scalar_t__ ncsets; int * sets; } ;


 int REG_ESPACE ;
 int SETERROR (int ) ;
 int memset (int *,int ,int) ;
 int * reallocarray (int *,scalar_t__,int) ;

__attribute__((used)) static cset *
allocset(struct parse *p)
{
 cset *cs, *ncs;

 ncs = reallocarray(p->g->sets, p->g->ncsets + 1, sizeof(*ncs));
 if (ncs == ((void*)0)) {
  SETERROR(REG_ESPACE);
  return (((void*)0));
 }
 p->g->sets = ncs;
 cs = &p->g->sets[p->g->ncsets++];
 memset(cs, 0, sizeof(*cs));

 return(cs);
}
