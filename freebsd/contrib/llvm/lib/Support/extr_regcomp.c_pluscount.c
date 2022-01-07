
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int iflags; int * strip; } ;
struct parse {scalar_t__ error; } ;
typedef scalar_t__ sopno ;
typedef int sop ;


 int OEND ;
 int OP (int ) ;


 int REGEX_BAD ;

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
  switch (OP(s)) {
  case 129:
   plusnest++;
   break;
  case 128:
   if (plusnest > maxnest)
    maxnest = plusnest;
   plusnest--;
   break;
  }
 } while (OP(s) != OEND);
 if (plusnest != 0)
  g->iflags |= REGEX_BAD;
 return(maxnest);
}
