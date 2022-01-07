
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_RX_INT_EN ;
 int AML_UART_MISC_RECV_IRQ_CNT_MASK ;
 int AML_UART_MISC_REG ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
aml8726_uart_bus_ungrab(struct uart_softc *sc)
{
 struct uart_bas *bas;
 uint32_t cr;
 uint32_t mr;







 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 mr = uart_getreg(bas, AML_UART_MISC_REG);
 mr &= AML_UART_MISC_RECV_IRQ_CNT_MASK;

 if (mr != 0) {
  cr = uart_getreg(bas, AML_UART_CONTROL_REG);
  cr |= AML_UART_CONTROL_RX_INT_EN;
  uart_setreg(bas, AML_UART_CONTROL_REG, cr);
  uart_barrier(bas);
 }

 uart_unlock(sc->sc_hwmtx);
}
