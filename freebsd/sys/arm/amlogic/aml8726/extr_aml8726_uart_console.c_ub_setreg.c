
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ AML_UART_KVM_BASE ;

__attribute__((used)) static void
ub_setreg(uint32_t off, uint32_t val)
{

 *((volatile uint32_t *)(AML_UART_KVM_BASE + off)) = val;
}
