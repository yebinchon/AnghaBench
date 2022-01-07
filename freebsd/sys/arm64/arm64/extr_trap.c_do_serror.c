
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct trapframe {int tf_esr; } ;


 int READ_SPECIALREG (int ) ;
 int far_el1 ;
 int panic (char*) ;
 int print_registers (struct trapframe*) ;
 int printf (char*,int ) ;

void
do_serror(struct trapframe *frame)
{
 uint64_t esr, far;

 far = READ_SPECIALREG(far_el1);
 esr = frame->tf_esr;

 print_registers(frame);
 printf(" far: %16lx\n", far);
 printf(" esr:         %.8lx\n", esr);
 panic("Unhandled System Error");
}
