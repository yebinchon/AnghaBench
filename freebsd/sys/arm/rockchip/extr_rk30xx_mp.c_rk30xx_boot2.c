
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
rk30xx_boot2(void)
{

 __asm __volatile(
      "ldr pc, 1f\n"
      ".globl mpentry_addr\n"
      "mpentry_addr:\n"
   "1: .space 4\n");
}
