
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int bsh; int bst; } ;
struct uart_softc {scalar_t__ sc_txbusy; int sc_hwmtx; TYPE_1__ sc_bas; } ;


 int SER_INT_RXREADY ;
 int SER_INT_TXIDLE ;
 int SSCOM_UINTM ;
 int SSCOM_UINTP ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
exynos4210_bus_ipend(struct uart_softc *sc)
{
 uint32_t ints;
 uint32_t txempty, rxready;
 int reg;
 int ipend;

 uart_lock(sc->sc_hwmtx);
 ints = bus_space_read_4(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTP);
 bus_space_write_4(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTP, ints);

 txempty = (1 << 2);
 rxready = (1 << 0);

 ipend = 0;
 if ((ints & txempty) > 0) {
  if (sc->sc_txbusy != 0)
   ipend |= SER_INT_TXIDLE;


  reg = bus_space_read_4(sc->sc_bas.bst, sc->sc_bas.bsh,
      SSCOM_UINTM);
  reg |= (1 << 2);
  bus_space_write_4(sc->sc_bas.bst, sc->sc_bas.bsh,
      SSCOM_UINTM, reg);
 }

 if ((ints & rxready) > 0) {
  ipend |= SER_INT_RXREADY;
 }

 uart_unlock(sc->sc_hwmtx);
 return (ipend);
}
