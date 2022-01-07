
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct html {int flags; } ;
struct eqn_box {int * first; } ;


 int HTML_NONOSPACE ;
 int TAG_MATH ;
 int eqn_box (struct html*,struct eqn_box const*) ;
 struct tag* print_otag (struct html*,int ,char*,char*) ;
 int print_tagq (struct html*,struct tag*) ;

void
print_eqn(struct html *p, const struct eqn_box *bp)
{
 struct tag *t;

 if (bp->first == ((void*)0))
  return;

 t = print_otag(p, TAG_MATH, "c", "eqn");

 p->flags |= HTML_NONOSPACE;
 eqn_box(p, bp);
 p->flags &= ~HTML_NONOSPACE;

 print_tagq(p, t);
}
