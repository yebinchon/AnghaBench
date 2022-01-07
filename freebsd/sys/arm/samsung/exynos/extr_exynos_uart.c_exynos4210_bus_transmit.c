
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bsh; int bst; } ;
struct uart_softc {int sc_txdatasz; int sc_txbusy; TYPE_1__ sc_bas; int sc_hwmtx; int * sc_txbuf; } ;


 int SSCOM_UINTM ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int exynos4210_putc (TYPE_1__*,int ) ;
 int uart_barrier (TYPE_1__*) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
exynos4210_bus_transmit(struct uart_softc *sc)
{
 int i;
 int reg;

 uart_lock(sc->sc_hwmtx);

 for (i = 0; i < sc->sc_txdatasz; i++) {
  exynos4210_putc(&sc->sc_bas, sc->sc_txbuf[i]);
  uart_barrier(&sc->sc_bas);
 }

 sc->sc_txbusy = 1;

 uart_unlock(sc->sc_hwmtx);


 reg = bus_space_read_4(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTM);
 reg &= ~(1 << 2);
 bus_space_write_4(sc->sc_bas.bst, sc->sc_bas.bsh, SSCOM_UINTM, reg);

 return (0);
}
