
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
_set_tp(void *tpval)
{

 __asm __volatile("mov %0, %%g7" : : "r" (tpval));
}
