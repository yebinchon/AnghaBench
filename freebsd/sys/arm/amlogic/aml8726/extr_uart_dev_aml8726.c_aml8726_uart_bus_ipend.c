
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_TX_INT_EN ;
 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_RX_FIFO_EMPTY ;
 int AML_UART_STATUS_RX_FIFO_OVERFLOW ;
 int AML_UART_STATUS_TX_FIFO_EMPTY ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
aml8726_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;
 uint32_t sr;
 uint32_t cr;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 ipend = 0;
 sr = uart_getreg(bas, AML_UART_STATUS_REG);
 cr = uart_getreg(bas, AML_UART_CONTROL_REG);

 if ((sr & AML_UART_STATUS_RX_FIFO_OVERFLOW) != 0)
  ipend |= SER_INT_OVERRUN;

 if ((sr & AML_UART_STATUS_TX_FIFO_EMPTY) != 0 &&
     (cr & AML_UART_CONTROL_TX_INT_EN) != 0) {
  ipend |= SER_INT_TXIDLE;

  cr &= ~AML_UART_CONTROL_TX_INT_EN;
  uart_setreg(bas, AML_UART_CONTROL_REG, cr);
  uart_barrier(bas);
 }

 if ((sr & AML_UART_STATUS_RX_FIFO_EMPTY) == 0)
  ipend |= SER_INT_RXREADY;

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
