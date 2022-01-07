
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct mtx {int dummy; } ;


 int UART_D ;
 int UART_S1 ;
 int UART_S1_RDRF ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (struct mtx*) ;
 int uart_unlock (struct mtx*) ;

__attribute__((used)) static int
vf_uart_getc(struct uart_bas *bas, struct mtx *hwmtx)
{
 int c;

 uart_lock(hwmtx);

 while (!(uart_getreg(bas, UART_S1) & UART_S1_RDRF))
  ;

 c = uart_getreg(bas, UART_D);
 uart_unlock(hwmtx);

 return (c & 0xff);
}
