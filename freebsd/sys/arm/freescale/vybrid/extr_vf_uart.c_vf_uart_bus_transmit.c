
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int* sc_txbuf; int sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int UART_C2 ;
 int UART_C2_TIE ;
 int UART_D ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
vf_uart_bus_transmit(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 int i;
 int reg;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);


 for (i = 0; i < sc->sc_txdatasz; i++) {
  uart_setreg(bas, UART_D, sc->sc_txbuf[i] & 0xff);
  uart_barrier(&sc->sc_bas);
 }

 sc->sc_txbusy = 1;


 reg = uart_getreg(bas, UART_C2);
 reg |= (UART_C2_TIE);
 uart_setreg(bas, UART_C2, reg);

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
