
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int CDNC_UART_CHAN_STAT_REG ;
 int CDNC_UART_CHAN_STAT_REG_TXEMPTY ;
 int CDNC_UART_CHAN_STAT_REG_TXFULL ;
 int CDNC_UART_FIFO ;
 int RD4 (struct uart_bas*,int ) ;
 int WR4 (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
cdnc_uart_putc(struct uart_bas *bas, int c)
{


 while ((RD4(bas,CDNC_UART_CHAN_STAT_REG) &
  CDNC_UART_CHAN_STAT_REG_TXFULL) != 0)
  ;

 WR4(bas, CDNC_UART_FIFO, c);

 while ((RD4(bas,CDNC_UART_CHAN_STAT_REG) &
  CDNC_UART_CHAN_STAT_REG_TXEMPTY) == 0)
  ;
}
