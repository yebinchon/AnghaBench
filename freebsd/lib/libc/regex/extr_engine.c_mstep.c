
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
struct re_guts {int* strip; int * sets; } ;
typedef int states ;
typedef size_t sopno ;
typedef int sop ;
typedef int onestate ;
typedef int cset ;


 int BACK (int ,int ,int) ;
 int BOL ;
 int BOLEOL ;
 int BOW ;
 int CHIN (int *,int) ;
 int EOL ;
 int EOW ;
 int FWD (int ,int ,int) ;
 int INC (int ) ;
 int INIT (int ,size_t) ;
 int ISSETBACK (int ,int) ;
 int ISSTATEIN (int ,int ) ;
 int NONCHAR (int) ;
 int OP (int) ;

 int OPND (int) ;






 int assert (int) ;
 int nope ;

__attribute__((used)) static states
step(struct re_guts *g,
 sopno start,
 sopno stop,
 states bef,
 wint_t ch,
 states aft)
{
 cset *cs;
 sop s;
 sopno pc;
 onestate here;
 sopno look;
 int i;

 for (pc = start, INIT(here, pc); pc != stop; pc++, INC(here)) {
  s = g->strip[pc];
  switch (OP(s)) {
  case 140:
   assert(pc == stop-1);
   break;
  case 142:

   assert(!NONCHAR(ch) || ch != OPND(s));
   if (ch == OPND(s))
    FWD(aft, bef, 1);
   break;
  case 144:
   if (ch == BOL || ch == BOLEOL)
    FWD(aft, bef, 1);
   break;
  case 139:
   if (ch == EOL || ch == BOLEOL)
    FWD(aft, bef, 1);
   break;
  case 143:
   if (ch == BOW)
    FWD(aft, bef, 1);
   break;
  case 138:
   if (ch == EOW)
    FWD(aft, bef, 1);
   break;
  case 147:
   if (!NONCHAR(ch))
    FWD(aft, bef, 1);
   break;
  case 146:
   cs = &g->sets[OPND(s)];
   if (!NONCHAR(ch) && CHIN(cs, ch))
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
   i = ISSETBACK(aft, OPND(s));
   BACK(aft, aft, OPND(s));
   if (!i && ISSETBACK(aft, OPND(s))) {

    pc -= OPND(s) + 1;
    INIT(here, pc);
   }
   break;
  case 133:
   FWD(aft, aft, 1);
   FWD(aft, aft, OPND(s));
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
   assert(OP(g->strip[pc+OPND(s)]) == (sop)135);
   FWD(aft, aft, OPND(s));
   break;
  case 136:
   if (ISSTATEIN(aft, here)) {
    for (look = 1;
        OP(s = g->strip[pc+look]) != (sop)130;
        look += OPND(s))
     assert(OP(s) == (sop)135);
    FWD(aft, aft, look + 1);
   }
   break;
  case 135:
   FWD(aft, aft, 1);
   if (OP(g->strip[pc+OPND(s)]) != (sop)130) {
    assert(OP(g->strip[pc+OPND(s)]) == (sop)135);
    FWD(aft, aft, OPND(s));
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
