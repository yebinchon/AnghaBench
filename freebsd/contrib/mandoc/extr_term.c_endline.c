
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {int flags; scalar_t__ viscol; scalar_t__ maxrmargin; int (* endline ) (struct termp*) ;scalar_t__ minbl; int * mc; int (* advance ) (struct termp*,scalar_t__) ;} ;


 int TERMP_ENDMC ;
 int TERMP_NEWMC ;
 int TERMP_NOBUF ;
 int TERMP_NOSPACE ;
 int stub1 (struct termp*,scalar_t__) ;
 int stub2 (struct termp*) ;
 int term_word (struct termp*,int *) ;

__attribute__((used)) static void
endline(struct termp *p)
{
 if ((p->flags & (TERMP_NEWMC | TERMP_ENDMC)) == TERMP_ENDMC) {
  p->mc = ((void*)0);
  p->flags &= ~TERMP_ENDMC;
 }
 if (p->mc != ((void*)0)) {
  if (p->viscol && p->maxrmargin >= p->viscol)
   (*p->advance)(p, p->maxrmargin - p->viscol + 1);
  p->flags |= TERMP_NOBUF | TERMP_NOSPACE;
  term_word(p, p->mc);
  p->flags &= ~(TERMP_NOBUF | TERMP_NEWMC);
 }
 p->viscol = 0;
 p->minbl = 0;
 (*p->endline)(p);
}
