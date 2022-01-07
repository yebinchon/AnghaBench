
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int AML_UART_RFIFO_REG ;
 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_RX_FIFO_EMPTY ;
 int ub_getreg (int ) ;

__attribute__((used)) static int
uart_cngetc(struct consdev * cp)
{
 int c;

 if ((ub_getreg(AML_UART_STATUS_REG) &
     AML_UART_STATUS_RX_FIFO_EMPTY) != 0)
  return (-1);

 c = ub_getreg(AML_UART_RFIFO_REG) & 0xff;

 return (c);
}
