
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
cpu_inval_icache(const void *ptr, size_t len)
{


 if (ptr == ((void*)0) || len == 0) {
  __asm __volatile(
      "ic		ialluis	\n"
      "dsb	ish	\n"
      : : : "memory");
  return;
 }


}
