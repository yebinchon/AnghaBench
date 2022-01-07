
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int AML_UART_CONTROL_CLR_ERR ;
 int AML_UART_CONTROL_REG ;
 int AML_UART_RFIFO_REG ;
 int AML_UART_STATUS_FRAME_ERR ;
 int AML_UART_STATUS_PARITY_ERR ;
 int AML_UART_STATUS_REG ;
 int AML_UART_STATUS_RX_FIFO_EMPTY ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_OVERRUN ;
 int UART_STAT_PARERR ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
aml8726_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int xc;
 uint32_t sr;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 sr = uart_getreg(bas, AML_UART_STATUS_REG);
 while ((sr & AML_UART_STATUS_RX_FIFO_EMPTY) == 0) {
  if (uart_rx_full(sc)) {
   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }
  xc = uart_getreg(bas, AML_UART_RFIFO_REG) & 0xff;
  if (sr & AML_UART_STATUS_FRAME_ERR)
   xc |= UART_STAT_FRAMERR;
  if (sr & AML_UART_STATUS_PARITY_ERR)
   xc |= UART_STAT_PARERR;
  uart_rx_put(sc, xc);
  sr = uart_getreg(bas, AML_UART_STATUS_REG);
 }

 while ((sr & AML_UART_STATUS_RX_FIFO_EMPTY) == 0) {
  (void)uart_getreg(bas, AML_UART_RFIFO_REG);
  sr = uart_getreg(bas, AML_UART_STATUS_REG);
 }

 if ((sr & (AML_UART_STATUS_FRAME_ERR | AML_UART_STATUS_PARITY_ERR)) != 0) {
  uart_setreg(bas, AML_UART_CONTROL_REG,
      (uart_getreg(bas, AML_UART_CONTROL_REG) |
      AML_UART_CONTROL_CLR_ERR));
  uart_barrier(bas);
  uart_setreg(bas, AML_UART_CONTROL_REG,
      (uart_getreg(bas, AML_UART_CONTROL_REG) &
      ~AML_UART_CONTROL_CLR_ERR));
  uart_barrier(bas);
 }

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
