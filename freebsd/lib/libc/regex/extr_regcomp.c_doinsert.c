
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ error; int* pbegin; int* pend; int * strip; } ;
typedef int sopno ;
typedef int sop ;


 int EMIT (int ,size_t) ;
 int HERE () ;
 int NPAREN ;
 int assert (int) ;
 int memmove (char*,char*,int) ;

__attribute__((used)) static void
doinsert(struct parse *p, sop op, size_t opnd, sopno pos)
{
 sopno sn;
 sop s;
 int i;


 if (p->error != 0)
  return;

 sn = HERE();
 EMIT(op, opnd);
 assert(HERE() == sn+1);
 s = p->strip[sn];


 assert(pos > 0);
 for (i = 1; i < NPAREN; i++) {
  if (p->pbegin[i] >= pos) {
   p->pbegin[i]++;
  }
  if (p->pend[i] >= pos) {
   p->pend[i]++;
  }
 }

 memmove((char *)&p->strip[pos+1], (char *)&p->strip[pos],
      (HERE()-pos-1)*sizeof(sop));
 p->strip[pos] = s;
}
