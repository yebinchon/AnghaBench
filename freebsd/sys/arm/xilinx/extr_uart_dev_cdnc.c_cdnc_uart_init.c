
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;


 int cdnc_uart_hw_init (struct uart_bas*) ;
 int cdnc_uart_set_params (struct uart_bas*,int,int,int,int) ;

__attribute__((used)) static void
cdnc_uart_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
       int parity)
{


 cdnc_uart_hw_init(bas);


 (void)cdnc_uart_set_params(bas, baudrate, databits, stopbits, parity);
}
