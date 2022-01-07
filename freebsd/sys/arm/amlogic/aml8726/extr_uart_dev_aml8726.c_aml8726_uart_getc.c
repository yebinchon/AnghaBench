
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int AML_UART_RFIFO_REG ;
 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_RX_FIFO_EMPTY ;
 int DELAY (int) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
aml8726_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);

 while ((uart_getreg(bas, AML_UART_STATUS_REG) &
     AML_UART_STATUS_RX_FIFO_EMPTY) != 0) {
  uart_unlock(hwmtx);
  DELAY(4);
  uart_lock(hwmtx);
 }

 c = uart_getreg(bas, AML_UART_RFIFO_REG) & 0xff;

 uart_unlock(hwmtx);

 return (c);
}
