
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int CDNC_UART_CHAN_STAT_REG ;
 int CDNC_UART_CHAN_STAT_REG_RXEMPTY ;
 int RD4 (struct uart_bas*,int ) ;

__attribute__((used)) static int
cdnc_uart_rxready(struct uart_bas *bas)
{

 return ((RD4(bas, CDNC_UART_CHAN_STAT_REG) &
   CDNC_UART_CHAN_STAT_REG_RXEMPTY) == 0);
}
