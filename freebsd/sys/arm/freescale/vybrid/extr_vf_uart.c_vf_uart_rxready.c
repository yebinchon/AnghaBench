
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_S1 ;
 int UART_S1_RDRF ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
vf_uart_rxready(struct uart_bas *bas)
{
 int usr1;

 usr1 = uart_getreg(bas, UART_S1);
 if (usr1 & UART_S1_RDRF) {
  return (1);
 }

 return (0);
}
