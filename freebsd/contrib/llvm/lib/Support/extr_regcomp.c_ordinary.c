
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uch ;
struct parse {TYPE_1__* g; } ;
typedef scalar_t__ cat_t ;
struct TYPE_2__ {int cflags; int ncategories; scalar_t__* categories; } ;


 int EMIT (int ,int ) ;
 int OCHAR ;
 int REG_ICASE ;
 int bothcases (struct parse*,int) ;
 scalar_t__ isalpha (int ) ;
 int othercase (int) ;

__attribute__((used)) static void
ordinary(struct parse *p, int ch)
{
 cat_t *cap = p->g->categories;

 if ((p->g->cflags&REG_ICASE) && isalpha((uch)ch) && othercase(ch) != ch)
  bothcases(p, ch);
 else {
  EMIT(OCHAR, (uch)ch);
  if (cap[ch] == 0)
   cap[ch] = p->g->ncategories++;
 }
}
