
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {size_t sc_rxput; int sc_hwmtx; int * sc_rxbuf; struct uart_bas sc_bas; } ;


 int UART_C2 ;
 int UART_C2_RIE ;
 int UART_D ;
 int UART_S1 ;
 int UART_S1_RDRF ;
 int UART_STAT_OVERRUN ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 scalar_t__ uart_rx_full (struct uart_softc*) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
vf_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int reg;
 int c;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);


 while (uart_getreg(bas, UART_S1) & UART_S1_RDRF) {
  if (uart_rx_full(sc)) {

   sc->sc_rxbuf[sc->sc_rxput] = UART_STAT_OVERRUN;
   break;
  }

  c = uart_getreg(bas, UART_D);
  uart_rx_put(sc, c);
 }


 reg = uart_getreg(bas, UART_C2);
 reg |= (UART_C2_RIE);
 uart_setreg(bas, UART_C2, reg);

 uart_unlock(sc->sc_hwmtx);
 return (0);
}
