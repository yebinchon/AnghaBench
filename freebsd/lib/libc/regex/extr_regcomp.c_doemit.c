
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ error; int slen; int ssize; int * strip; } ;
typedef int sop ;


 int OPSHIFT ;
 int SOP (int ,size_t) ;
 int assert (int) ;
 int enlarge (struct parse*,int) ;

__attribute__((used)) static void
doemit(struct parse *p, sop op, size_t opnd)
{

 if (p->error != 0)
  return;


 assert(opnd < 1<<OPSHIFT);


 if (p->slen >= p->ssize)
  if (!enlarge(p, (p->ssize+1) / 2 * 3))
   return;


 p->strip[p->slen++] = SOP(op, opnd);
}
