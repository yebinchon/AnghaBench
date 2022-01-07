
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_RX_INT_EN ;
 int AML_UART_CONTROL_TX_INT_EN ;
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ;
 int AML_UART_MISC_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
aml8726_uart_bus_detach(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint32_t cr;
 uint32_t mr;

 bas = &sc->sc_bas;


 cr = uart_getreg(bas, AML_UART_CONTROL_REG);
 cr &= ~(AML_UART_CONTROL_TX_INT_EN | AML_UART_CONTROL_RX_INT_EN);
 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);


 mr = uart_getreg(bas, AML_UART_MISC_REG);
 mr &= ~AML_UART_MISC_RECV_IRQ_CNT_MASK;
 uart_setreg(bas, AML_UART_MISC_REG, mr);
 uart_barrier(bas);

 return (0);
}
