
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; int sc_hwmtx; int * sc_txbuf; struct uart_bas sc_bas; } ;


 int CDNC_UART_FIFO ;
 int CDNC_UART_IEN_REG ;
 int CDNC_UART_INT_TXEMPTY ;
 int CDNC_UART_ISTAT_REG ;
 int WR4 (struct uart_bas*,int ,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
cdnc_uart_bus_transmit(struct uart_softc *sc)
{
 int i;
 struct uart_bas *bas = &sc->sc_bas;

 uart_lock(sc->sc_hwmtx);


 WR4(bas, CDNC_UART_ISTAT_REG, CDNC_UART_INT_TXEMPTY);

 for (i = 0; i < sc->sc_txdatasz; i++)
  WR4(bas, CDNC_UART_FIFO, sc->sc_txbuf[i]);


 WR4(bas, CDNC_UART_IEN_REG, CDNC_UART_INT_TXEMPTY);
 sc->sc_txbusy = 1;

 uart_unlock(sc->sc_hwmtx);

 return (0);
}
