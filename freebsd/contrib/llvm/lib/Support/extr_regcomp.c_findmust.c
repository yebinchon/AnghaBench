
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {scalar_t__ mlen; char* must; int iflags; int * strip; } ;
struct parse {scalar_t__ error; } ;
typedef scalar_t__ sopno ;
typedef int sop ;




 int const OEND ;

 int const OOR2 ;
 int const OP (int ) ;

 scalar_t__ OPND (int ) ;


 int const O_CH ;
 int const O_QUEST ;
 int REGEX_BAD ;
 int assert (int) ;
 char* malloc (size_t) ;

__attribute__((used)) static void
findmust(struct parse *p, struct re_guts *g)
{
 sop *scan;
 sop *start = 0;
 sop *newstart = 0;
 sopno newlen;
 sop s;
 char *cp;
 sopno i;


 if (p->error != 0)
  return;


 newlen = 0;
 scan = g->strip + 1;
 do {
  s = *scan++;
  switch (OP(s)) {
  case 133:
   if (newlen == 0)
    newstart = scan - 1;
   newlen++;
   break;
  case 130:
  case 131:
  case 128:
   break;
  case 129:
  case 132:
   scan--;
   do {
    scan += OPND(s);
    s = *scan;

    if (OP(s) != O_QUEST && OP(s) != O_CH &&
       OP(s) != OOR2) {
     g->iflags |= REGEX_BAD;
     return;
    }
   } while (OP(s) != O_QUEST && OP(s) != O_CH);

  default:
   if (newlen > g->mlen) {
    start = newstart;
    g->mlen = newlen;
   }
   newlen = 0;
   break;
  }
 } while (OP(s) != OEND);

 if (g->mlen == 0)
  return;


 g->must = malloc((size_t)g->mlen + 1);
 if (g->must == ((void*)0)) {
  g->mlen = 0;
  return;
 }
 cp = g->must;
 scan = start;
 for (i = g->mlen; i > 0; i--) {
  while (OP(s = *scan++) != 133)
   continue;
  assert(cp < g->must + g->mlen);
  *cp++ = (char)OPND(s);
 }
 assert(cp == g->must + g->mlen);
 *cp++ = '\0';
}
