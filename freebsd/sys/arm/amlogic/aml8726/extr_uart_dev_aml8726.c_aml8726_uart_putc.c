
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_TX_FIFO_FULL ;
 int AML_UART_WFIFO_REG ;
 int cpu_spinwait () ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
aml8726_uart_putc(struct uart_bas *bas, int c)
{

 while ((uart_getreg(bas, AML_UART_STATUS_REG) &
     AML_UART_STATUS_TX_FIFO_FULL) != 0)
  cpu_spinwait();

 uart_setreg(bas, AML_UART_WFIFO_REG, c);
 uart_barrier(bas);
}
