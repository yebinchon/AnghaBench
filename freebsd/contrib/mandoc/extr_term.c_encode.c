
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {int flags; int col; TYPE_1__* tcol; int (* letter ) (struct termp*,char const) ;} ;
struct TYPE_2__ {int maxcols; int lastcol; char* buf; } ;


 char const ASCII_HYPH ;
 char const ASCII_NBRSP ;
 int TERMP_BACKAFTER ;
 int TERMP_BACKBEFORE ;
 int TERMP_NOBUF ;
 int adjbuf (TYPE_1__*,int) ;
 int encode1 (struct termp*,char const) ;
 scalar_t__ isgraph (unsigned char) ;
 int stub1 (struct termp*,char const) ;

__attribute__((used)) static void
encode(struct termp *p, const char *word, size_t sz)
{
 size_t i;

 if (p->flags & TERMP_NOBUF) {
  for (i = 0; i < sz; i++)
   (*p->letter)(p, word[i]);
  return;
 }

 if (p->col + 2 + (sz * 5) >= p->tcol->maxcols)
  adjbuf(p->tcol, p->col + 2 + (sz * 5));

 for (i = 0; i < sz; i++) {
  if (ASCII_HYPH == word[i] ||
      isgraph((unsigned char)word[i]))
   encode1(p, word[i]);
  else {
   if (p->tcol->lastcol <= p->col ||
       (word[i] != ' ' && word[i] != ASCII_NBRSP))
    p->tcol->buf[p->col] = word[i];
   p->col++;






   if (word[i] == '\b' &&
       (p->flags & TERMP_BACKBEFORE)) {
    p->flags &= ~TERMP_BACKBEFORE;
    p->flags |= TERMP_BACKAFTER;
   }
  }
 }
 if (p->tcol->lastcol < p->col)
  p->tcol->lastcol = p->col;
}
