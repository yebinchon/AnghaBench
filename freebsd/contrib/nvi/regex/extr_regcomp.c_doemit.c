
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ error; size_t slen; size_t ssize; size_t* stripdata; int * strip; } ;
typedef int sop ;


 int assert (int) ;
 int enlarge (struct parse*,int) ;

__attribute__((used)) static void
doemit(struct parse *p, sop op, size_t opnd)
{

 if (p->error != 0)
  return;


 assert(opnd < 1);


 if (p->slen >= p->ssize)
  if (!enlarge(p, (p->ssize+1) / 2 * 3))
   return;


 p->strip[p->slen] = op;
 p->stripdata[p->slen] = opnd;
 p->slen++;
}
