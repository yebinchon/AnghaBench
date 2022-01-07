
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int cvmx_error_poll () ;

__attribute__((used)) static void __cvmx_interrupt_ecc(int irq_number, uint64_t *registers, void *user_arg)
{
    cvmx_error_poll();
}
