
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int bsh; int bst; } ;
struct uart_softc {struct uart_bas sc_bas; } ;


 int SSCOM_UFSTAT ;
 int SSCOM_URXH ;
 int UFSTAT_RXCOUNT ;
 int bus_space_read_4 (int ,int ,int ) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_rx_put (struct uart_softc*,int ) ;

__attribute__((used)) static int
exynos4210_bus_receive(struct uart_softc *sc)
{
 struct uart_bas *bas;

 bas = &sc->sc_bas;
 while (bus_space_read_4(bas->bst, bas->bsh,
  SSCOM_UFSTAT) & UFSTAT_RXCOUNT)
  uart_rx_put(sc, uart_getreg(&sc->sc_bas, SSCOM_URXH));

 return (0);
}
