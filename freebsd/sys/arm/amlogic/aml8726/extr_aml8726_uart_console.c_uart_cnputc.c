
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct consdev {int dummy; } ;


 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_TX_FIFO_FULL ;
 int AML_UART_WFIFO_REG ;
 int cpu_spinwait () ;
 int ub_getreg (int ) ;
 int ub_setreg (int ,int) ;

__attribute__((used)) static void
uart_cnputc(struct consdev *cp, int c)
{

 while ((ub_getreg(AML_UART_STATUS_REG) &
     AML_UART_STATUS_TX_FIFO_FULL) != 0)
  cpu_spinwait();

 ub_setreg(AML_UART_WFIFO_REG, c);
}
