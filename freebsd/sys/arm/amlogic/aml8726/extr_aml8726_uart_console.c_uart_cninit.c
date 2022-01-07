
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct consdev {int dummy; } ;


 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_RX_EN ;
 int AML_UART_CONTROL_RX_INT_EN ;
 int AML_UART_CONTROL_RX_RST ;
 int AML_UART_CONTROL_TWO_WIRE_EN ;
 int AML_UART_CONTROL_TX_EN ;
 int AML_UART_CONTROL_TX_INT_EN ;
 int AML_UART_CONTROL_TX_RST ;
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ;
 int AML_UART_MISC_REG ;
 int DELAY (int) ;
 int * early_putc ;
 int printf (char*) ;
 int ub_getreg (int ) ;
 int ub_setreg (int ,int) ;

__attribute__((used)) static void
uart_cninit(struct consdev *cp)
{
 uint32_t cr;
 uint32_t mr;
 cr = ub_getreg(AML_UART_CONTROL_REG);

 cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);

 cr |= (AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);

 cr |= AML_UART_CONTROL_TWO_WIRE_EN;

 cr |= (AML_UART_CONTROL_TX_EN | AML_UART_CONTROL_RX_EN);
 ub_setreg(AML_UART_CONTROL_REG, cr);


 mr = ub_getreg(AML_UART_MISC_REG);
 mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
 ub_setreg(AML_UART_MISC_REG, mr);


 cr &= ~(AML_UART_CONTROL_TX_RST | AML_UART_CONTROL_RX_RST);
 ub_setreg(AML_UART_CONTROL_REG, cr);
}
