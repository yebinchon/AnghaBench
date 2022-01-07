
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int __cvmx_interrupt_dump_registers (int *) ;
 int cvmx_safe_printf (char*,int) ;

__attribute__((used)) static void __cvmx_interrupt_default(int irq_number, uint64_t *registers, void *user_arg)
{
    cvmx_safe_printf("cvmx_interrupt_default: Received interrupt %d\n", irq_number);
    __cvmx_interrupt_dump_registers(registers);
}
