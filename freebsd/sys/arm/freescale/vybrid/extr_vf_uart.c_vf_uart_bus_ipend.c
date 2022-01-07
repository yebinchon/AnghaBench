
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {scalar_t__ sc_txbusy; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int SER_INT_BREAK ;
 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int UART_C2 ;
 int UART_C2_RIE ;
 int UART_C2_TIE ;
 int UART_S1 ;
 int UART_S1_RDRF ;
 int UART_S1_TDRE ;
 int UART_S2 ;
 int UART_S2_LBKDIF ;
 int UART_SFIFO ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
vf_uart_bus_ipend(struct uart_softc *sc)
{
 struct uart_bas *bas;
 int ipend;
 uint32_t usr1, usr2;
 int reg;
 int sfifo;

 bas = &sc->sc_bas;
 ipend = 0;

 uart_lock(sc->sc_hwmtx);

 usr1 = uart_getreg(bas, UART_S1);
 usr2 = uart_getreg(bas, UART_S2);
 sfifo = uart_getreg(bas, UART_SFIFO);


 uart_setreg(bas, UART_S2, usr2);

 if (usr1 & UART_S1_TDRE) {
  reg = uart_getreg(bas, UART_C2);
  reg &= ~(UART_C2_TIE);
  uart_setreg(bas, UART_C2, reg);

  if (sc->sc_txbusy != 0) {
   ipend |= SER_INT_TXIDLE;
  }
 }

 if (usr1 & UART_S1_RDRF) {
  reg = uart_getreg(bas, UART_C2);
  reg &= ~(UART_C2_RIE);
  uart_setreg(bas, UART_C2, reg);

  ipend |= SER_INT_RXREADY;
 }

 if (usr2 & UART_S2_LBKDIF) {
  ipend |= SER_INT_BREAK;
 }

 uart_unlock(sc->sc_hwmtx);

 return (ipend);
}
