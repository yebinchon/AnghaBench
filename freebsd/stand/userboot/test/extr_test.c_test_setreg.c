
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int * regs ;

void
test_setreg(void *arg, int r, uint64_t v)
{

 if (r < 0 || r >= 16)
  return;
 regs[r] = v;
}
