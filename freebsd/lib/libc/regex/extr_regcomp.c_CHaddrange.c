
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ wint_t ;
struct parse {int dummy; } ;
struct TYPE_7__ {int nranges; TYPE_2__* ranges; } ;
typedef TYPE_1__ cset ;
struct TYPE_8__ {scalar_t__ max; scalar_t__ min; } ;
typedef TYPE_2__ crange ;


 int CHadd (struct parse*,TYPE_1__*,scalar_t__) ;
 scalar_t__ NC ;
 int REG_ESPACE ;
 int SETERROR (int ) ;
 TYPE_2__* reallocarray (TYPE_2__*,int,int) ;

__attribute__((used)) static void
CHaddrange(struct parse *p, cset *cs, wint_t min, wint_t max)
{
 crange *newranges;

 for (; min < NC && min <= max; min++)
  CHadd(p, cs, min);
 if (min >= max)
  return;
 newranges = reallocarray(cs->ranges, cs->nranges + 1,
     sizeof(*cs->ranges));
 if (newranges == ((void*)0)) {
  SETERROR(REG_ESPACE);
  return;
 }
 cs->ranges = newranges;
 cs->ranges[cs->nranges].min = min;
 cs->ranges[cs->nranges].max = max;
 cs->nranges++;
}
