
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwsig; int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CDNC_UART_MODEM_STAT_REG ;
 int CDNC_UART_MODEM_STAT_REG_CTS ;
 int CDNC_UART_MODEM_STAT_REG_DCD ;
 int CDNC_UART_MODEM_STAT_REG_DSR ;
 int CDNC_UART_MODEM_STAT_REG_RI ;
 int RD4 (struct uart_bas*,int ) ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DCTS ;
 int SER_DDCD ;
 int SER_DDSR ;
 int SER_DRI ;
 int SER_DSR ;
 int SER_MASK_DELTA ;
 int SER_RI ;
 int SIGCHG (int,int,int ,int ) ;
 int atomic_cmpset_32 (int*,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
cdnc_uart_bus_getsig(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t new, old, sig;
 uint8_t modem_status;

 do {
  old = sc->sc_hwsig;
  sig = old;
  uart_lock(sc->sc_hwmtx);
  modem_status = RD4(bas, CDNC_UART_MODEM_STAT_REG);
  uart_unlock(sc->sc_hwmtx);
  SIGCHG(modem_status & CDNC_UART_MODEM_STAT_REG_DSR,
         sig, SER_DSR, SER_DDSR);
  SIGCHG(modem_status & CDNC_UART_MODEM_STAT_REG_CTS,
         sig, SER_CTS, SER_DCTS);
  SIGCHG(modem_status & CDNC_UART_MODEM_STAT_REG_DCD,
         sig, SER_DCD, SER_DDCD);
  SIGCHG(modem_status & CDNC_UART_MODEM_STAT_REG_RI,
         sig, SER_RI, SER_DRI);
  new = sig & ~SER_MASK_DELTA;
 } while (!atomic_cmpset_32(&sc->sc_hwsig, old, new));
 return (sig);
}
