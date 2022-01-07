
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ volatile uint32_t ;


 scalar_t__ volatile imx_uart_base ;

__attribute__((used)) static uint32_t
ub_getreg(uint32_t off)
{

 return *((volatile uint32_t *)(imx_uart_base + off));
}
