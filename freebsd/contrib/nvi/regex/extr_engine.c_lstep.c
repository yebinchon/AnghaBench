
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct re_guts {int* strip; size_t* stripdata; int * sets; } ;
typedef int states ;
typedef size_t sopno ;
typedef int sop ;
typedef int onestate ;
typedef int cset ;
typedef size_t RCHAR_T ;


 int BACK (int ,int ,size_t) ;
 int BOL ;
 int BOLEOL ;
 int BOW ;
 int CHIN (int *,size_t) ;
 int EOL ;
 int EOW ;
 int FWD (int ,int ,int) ;
 int INC (int ) ;
 int INIT (int ,size_t) ;
 int ISSETBACK (int ,size_t) ;
 int ISSTATEIN (int ,int ) ;
 int OP (int) ;







 int assert (int) ;
 int nope ;

__attribute__((used)) static states
step(struct re_guts *g,
    sopno start,
    sopno stop,
    states bef,
    int flag,
    RCHAR_T ch,
    states aft)
{
 cset *cs;
 sop s;
 RCHAR_T d;
 sopno pc;
 onestate here;
 sopno look;
 int i;

 for (pc = start, INIT(here, pc); pc != stop; pc++, INC(here)) {
  s = g->strip[pc];
  d = g->stripdata[pc];
  switch (s) {
  case 140:
   assert(pc == stop-1);
   break;
  case 142:

   assert(!flag || ch != d);
   if (ch == d)
    FWD(aft, bef, 1);
   break;
  case 144:
   if (flag == BOL || flag == BOLEOL)
    FWD(aft, bef, 1);
   break;
  case 139:
   if (flag == EOL || flag == BOLEOL)
    FWD(aft, bef, 1);
   break;
  case 143:
   if (flag == BOW)
    FWD(aft, bef, 1);
   break;
  case 138:
   if (flag == EOW)
    FWD(aft, bef, 1);
   break;
  case 147:
   if (!flag)
    FWD(aft, bef, 1);
   break;
  case 146:
   cs = &g->sets[d];
   if (!flag && CHIN(cs, ch))
    FWD(aft, bef, 1);
   break;
  case 145:
  case 131:
   FWD(aft, aft, 1);
   break;
  case 134:
   FWD(aft, aft, 1);
   break;
  case 129:
   FWD(aft, aft, 1);
   i = ISSETBACK(aft, d);
   BACK(aft, aft, d);
   if (!i && ISSETBACK(aft, d)) {

    pc -= d + 1;
    INIT(here, pc);
   }
   break;
  case 133:
   FWD(aft, aft, 1);
   FWD(aft, aft, d);
   break;
  case 128:
   FWD(aft, aft, 1);
   break;
  case 137:
  case 132:
   FWD(aft, aft, 1);
   break;
  case 141:
   FWD(aft, aft, 1);
   assert(OP(g->strip[pc+d]) == 135);
   FWD(aft, aft, d);
   break;
  case 136:
   if (ISSTATEIN(aft, here)) {
    for (look = 1; ; look += d) {
     s = g->strip[pc+look];
     d = g->stripdata[pc+look];
     if (s == 130)
      break;
     assert(s == 135);
    }
    FWD(aft, aft, look);
   }
   break;
  case 135:
   FWD(aft, aft, 1);
   if (g->strip[pc+d] != 130) {
    assert(g->strip[pc+d] == 135);
    FWD(aft, aft, d);
   }
   break;
  case 130:
   FWD(aft, aft, 1);
   break;
  default:
   assert(nope);
   break;
  }
 }

 return(aft);
}
