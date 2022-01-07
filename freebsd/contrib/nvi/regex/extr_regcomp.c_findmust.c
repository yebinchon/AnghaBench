
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int* strip; scalar_t__ mlen; int * must; int iflags; int * stripdata; } ;
struct parse {scalar_t__ error; } ;
typedef scalar_t__ sopno ;
typedef int sop ;
typedef int RCHAR_T ;


 int BAD ;


 int OEND ;

 int OOR2 ;



 int O_CH ;
 int O_QUEST ;
 int assert (int) ;
 int * malloc (size_t) ;

__attribute__((used)) static void
findmust(struct parse *p, struct re_guts *g)
{
 sop *scans;
 RCHAR_T *scand;
 sop *starts = 0;
 RCHAR_T *startd = ((void*)0);
 sop *newstarts = 0;
 RCHAR_T *newstartd = ((void*)0);
 sopno newlen;
 sop s;
 RCHAR_T d;
 RCHAR_T *cp;
 sopno i;


 if (p->error != 0)
  return;


 newlen = 0;
 scans = g->strip + 1;
 scand = g->stripdata + 1;
 do {
  s = *scans++;
  d = *scand++;
  switch (s) {
  case 133:
   if (newlen == 0) {
    newstarts = scans - 1;
    newstartd = scand - 1;
   }
   newlen++;
   break;
  case 130:
  case 131:
  case 128:
   break;
  case 129:
  case 132:
   scans--;
   scand--;
   do {
    scans += d;
    scand += d;
    s = *scans;
    d = *scand;

    if (s != O_QUEST && s != O_CH && s != OOR2) {
     g->iflags |= BAD;
     return;
    }
   } while (s != O_QUEST && s != O_CH);

  default:
   if (newlen > g->mlen) {
    starts = newstarts;
    startd = newstartd;
    g->mlen = newlen;
   }
   newlen = 0;
   break;
  }
 } while (s != OEND);

 if (g->mlen == 0)
  return;


 g->must = malloc(((size_t)g->mlen + 1) * sizeof(RCHAR_T));
 if (g->must == ((void*)0)) {
  g->mlen = 0;
  return;
 }
 cp = g->must;
 scans = starts;
 scand = startd;
 for (i = g->mlen; i > 0; i--) {
  for (;;) {
   s = *scans++;
   d = *scand++;
   if (s == 133)
    break;
  }
  assert(cp < g->must + g->mlen);
  *cp++ = d;
 }
 assert(cp == g->must + g->mlen);
 *cp++ = '\0';
}
