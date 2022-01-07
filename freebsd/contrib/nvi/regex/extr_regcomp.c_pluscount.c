
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int* strip; int iflags; } ;
struct parse {scalar_t__ error; } ;
typedef scalar_t__ sopno ;
typedef int sop ;


 int BAD ;
 int OEND ;



__attribute__((used)) static sopno
pluscount(struct parse *p, struct re_guts *g)
{
 sop *scan;
 sop s;
 sopno plusnest = 0;
 sopno maxnest = 0;

 if (p->error != 0)
  return(0);

 scan = g->strip + 1;
 do {
  s = *scan++;
  switch (s) {
  case 129:
   plusnest++;
   break;
  case 128:
   if (plusnest > maxnest)
    maxnest = plusnest;
   plusnest--;
   break;
  }
 } while (s != OEND);
 if (plusnest != 0)
  g->iflags |= BAD;
 return(maxnest);
}
