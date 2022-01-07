
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int CDNC_UART_CHAN_STAT_REG ;
 int CDNC_UART_CHAN_STAT_REG_RXEMPTY ;
 int CDNC_UART_FIFO ;
 int DELAY (int) ;
 int RD4 (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
cdnc_uart_getc(struct uart_bas *bas, struct mtx *mtx)
{
 int c;

 uart_lock(mtx);

 while ((RD4(bas, CDNC_UART_CHAN_STAT_REG) &
  CDNC_UART_CHAN_STAT_REG_RXEMPTY) != 0) {
  uart_unlock(mtx);
  DELAY(4);
  uart_lock(mtx);
 }

 c = RD4(bas, CDNC_UART_FIFO);

 uart_unlock(mtx);

 c &= 0xff;
 return (c);
}
