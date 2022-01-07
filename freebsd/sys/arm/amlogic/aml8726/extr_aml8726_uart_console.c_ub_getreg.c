
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ volatile uint32_t ;


 scalar_t__ volatile AML_UART_KVM_BASE ;

__attribute__((used)) static uint32_t
ub_getreg(uint32_t off)
{

 return *((volatile uint32_t *)(AML_UART_KVM_BASE + off));
}
