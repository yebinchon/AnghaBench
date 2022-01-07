
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_RX_EN ;
 int AML_UART_CONTROL_RX_INT_EN ;
 int AML_UART_CONTROL_RX_RST ;
 int AML_UART_CONTROL_TX_EN ;
 int AML_UART_CONTROL_TX_INT_EN ;
 int AML_UART_CONTROL_TX_RST ;
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ;
 int AML_UART_MISC_REG ;
 int aml8726_uart_param (struct uart_bas*,int,int,int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static void
aml8726_uart_init(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t cr;
 uint32_t mr;

 (void)aml8726_uart_param(bas, baudrate, databits, stopbits, parity);

 cr = uart_getreg(bas, AML_UART_CONTROL_REG);

 cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);

 cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);

 cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);
 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);


 mr = uart_getreg(bas, AML_UART_MISC_REG);
 mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
 uart_setreg(bas, AML_UART_MISC_REG, mr);
 uart_barrier(bas);


 cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);
}
