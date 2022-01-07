
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; TYPE_1__* sc_sysdev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int CDNC_UART_CHAN_STAT_REG ;
 int CDNC_UART_CHAN_STAT_REG_RXEMPTY ;
 int CDNC_UART_FIFO ;
 int CDNC_UART_INT_FRAMING ;
 int CDNC_UART_INT_PARITY ;
 int CDNC_UART_ISTAT_REG ;
 int RD4 (struct uart_bas*,int ) ;
 scalar_t__ UART_DEV_CONSOLE ;
 int UART_STAT_FRAMERR ;
 int UART_STAT_PARERR ;
 int WR4 (struct uart_bas*,int ,int) ;
 int kdb_break () ;
 int uart_lock (int ) ;
 int uart_rx_put (struct uart_softc*,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
cdnc_uart_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t status;
 int c, c_status = 0;

 uart_lock(sc->sc_hwmtx);


 status = RD4(bas, CDNC_UART_ISTAT_REG);
 if ((status & (CDNC_UART_INT_FRAMING | CDNC_UART_INT_PARITY)) != 0) {
  WR4(bas, CDNC_UART_ISTAT_REG,
      status & (CDNC_UART_INT_FRAMING | CDNC_UART_INT_PARITY));
  if ((status & CDNC_UART_INT_PARITY) != 0)
   c_status |= UART_STAT_PARERR;
  if ((status & CDNC_UART_INT_FRAMING) != 0)
   c_status |= UART_STAT_FRAMERR;
 }

 while ((RD4(bas, CDNC_UART_CHAN_STAT_REG) &
  CDNC_UART_CHAN_STAT_REG_RXEMPTY) == 0) {
  c = RD4(bas, CDNC_UART_FIFO) & 0xff;
  uart_rx_put(sc, c | c_status);
 }

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
