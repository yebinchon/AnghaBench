
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct trapframe {int tf_sp; int tf_lr; int tf_elr; int tf_spsr; int * tf_x; } ;


 int nitems (int *) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_registers(struct trapframe *frame)
{
 u_int reg;

 for (reg = 0; reg < nitems(frame->tf_x); reg++) {
  printf(" %sx%d: %16lx\n", (reg < 10) ? " " : "", reg,
      frame->tf_x[reg]);
 }
 printf("  sp: %16lx\n", frame->tf_sp);
 printf("  lr: %16lx\n", frame->tf_lr);
 printf(" elr: %16lx\n", frame->tf_elr);
 printf("spsr:         %8x\n", frame->tf_spsr);
}
