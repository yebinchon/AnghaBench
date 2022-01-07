
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_RX_FIFO_EMPTY ;
 int uart_getreg (struct uart_bas*,int ) ;

__attribute__((used)) static int
aml8726_uart_rxready(struct uart_bas *bas)
{

 return ((uart_getreg(bas, AML_UART_STATUS_REG) &
     AML_UART_STATUS_RX_FIFO_EMPTY) == 0 ? 1 : 0);
}
