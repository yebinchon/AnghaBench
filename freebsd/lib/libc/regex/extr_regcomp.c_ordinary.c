
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wint_t ;
struct parse {TYPE_1__* g; } ;
typedef int cset ;
struct TYPE_2__ {int cflags; int * sets; } ;


 int CHadd (struct parse*,int *,int) ;
 int EMIT (int ,int) ;
 int OANYOF ;
 int OCHAR ;
 int OPDMASK ;
 int REG_ICASE ;
 int * allocset (struct parse*) ;
 int bothcases (struct parse*,int) ;
 scalar_t__ iswalpha (int) ;
 int othercase (int) ;

__attribute__((used)) static void
ordinary(struct parse *p, wint_t ch)
{
 cset *cs;

 if ((p->g->cflags&REG_ICASE) && iswalpha(ch) && othercase(ch) != ch)
  bothcases(p, ch);
 else if ((ch & OPDMASK) == ch)
  EMIT(OCHAR, ch);
 else {




  if ((cs = allocset(p)) == ((void*)0))
   return;
  CHadd(p, cs, ch);
  EMIT(OANYOF, (int)(cs - p->g->sets));
 }
}
