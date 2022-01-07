
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse {scalar_t__ error; int* stripdata; } ;
typedef size_t sopno ;
typedef int sop ;


 int assert (int) ;

__attribute__((used)) static void
dofwd(struct parse *p, sopno pos, sop value)
{

 if (p->error != 0)
  return;

 assert(value < 1);
 p->stripdata[pos] = value;
}
