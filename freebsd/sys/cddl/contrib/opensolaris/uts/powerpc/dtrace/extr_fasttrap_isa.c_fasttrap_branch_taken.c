
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {scalar_t__ ctr; int cr; } ;



__attribute__((used)) static int
fasttrap_branch_taken(int bo, int bi, struct reg *regs)
{
 int crzero = 0;


 if ((bo & 0x14) == 0x14)
  return 1;


 if (!(bo & 0x04)) {
  --regs->ctr;
  crzero = (regs->ctr == 0);
  if (bo & 0x10) {
   return (!(crzero ^ (bo >> 1)));
  }
 }

 return (crzero | (((regs->cr >> (31 - bi)) ^ (bo >> 3)) ^ 1));
}
