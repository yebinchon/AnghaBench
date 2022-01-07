
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int UART_D ;
 int UART_S1 ;
 int UART_S1_TDRE ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
vf_uart_putc(struct uart_bas *bas, int c)
{

 while (!(uart_getreg(bas, UART_S1) & UART_S1_TDRE))
  ;

 uart_setreg(bas, UART_D, c);
}
