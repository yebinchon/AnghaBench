
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; scalar_t__ sc_txbusy; struct uart_bas sc_bas; } ;


 int CDNC_UART_IDIS_REG ;
 int CDNC_UART_INT_DMSI ;
 int CDNC_UART_INT_RXOVR ;
 int CDNC_UART_INT_RXTMOUT ;
 int CDNC_UART_INT_RXTRIG ;
 int CDNC_UART_INT_TXEMPTY ;
 int CDNC_UART_INT_TXOVR ;
 int CDNC_UART_ISTAT_REG ;
 int CDNC_UART_MODEM_STAT_REG ;
 int CDNC_UART_MODEM_STAT_REG_DCTS ;
 int CDNC_UART_MODEM_STAT_REG_DDCD ;
 int CDNC_UART_MODEM_STAT_REG_DDSR ;
 int CDNC_UART_MODEM_STAT_REG_TERI ;
 int RD4 (struct uart_bas*,int ) ;
 int SER_INT_OVERRUN ;
 int SER_INT_RXREADY ;
 int SER_INT_SIGCHG ;
 int SER_INT_TXIDLE ;
 int WR4 (struct uart_bas*,int ,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
cdnc_uart_bus_ipend(struct uart_softc *sc)
{
 int ipend = 0;
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t istatus;

 uart_lock(sc->sc_hwmtx);

 istatus = RD4(bas, CDNC_UART_ISTAT_REG);


 WR4(bas, CDNC_UART_ISTAT_REG, istatus &
     (CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT |
      CDNC_UART_INT_TXOVR | CDNC_UART_INT_RXOVR |
      CDNC_UART_INT_TXEMPTY | CDNC_UART_INT_DMSI));


 if ((istatus & (CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT)) != 0)
  ipend |= SER_INT_RXREADY;


 if (sc->sc_txbusy && (istatus & CDNC_UART_INT_TXEMPTY) != 0) {

  WR4(bas, CDNC_UART_IDIS_REG, CDNC_UART_INT_TXEMPTY);
  ipend |= SER_INT_TXIDLE;
 }


 if ((istatus & CDNC_UART_INT_TXOVR) != 0)
  ipend |= SER_INT_OVERRUN;


 if ((istatus & CDNC_UART_INT_RXOVR) != 0)
  ipend |= SER_INT_OVERRUN;


 if ((istatus & CDNC_UART_INT_DMSI) != 0) {
  WR4(bas, CDNC_UART_MODEM_STAT_REG,
      CDNC_UART_MODEM_STAT_REG_DDCD |
      CDNC_UART_MODEM_STAT_REG_TERI |
      CDNC_UART_MODEM_STAT_REG_DDSR |
      CDNC_UART_MODEM_STAT_REG_DCTS);
  ipend |= SER_INT_SIGCHG;
 }

 uart_unlock(sc->sc_hwmtx);
 return (ipend);
}
