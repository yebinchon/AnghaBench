
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {struct uart_devinfo* sc_sysdev; struct uart_bas sc_bas; } ;
struct uart_devinfo {int parity; int stopbits; int databits; int baudrate; } ;


 int CDNC_UART_IEN_REG ;
 int CDNC_UART_INT_DMSI ;
 int CDNC_UART_INT_RXOVR ;
 int CDNC_UART_INT_RXTMOUT ;
 int CDNC_UART_INT_RXTRIG ;
 int CDNC_UART_INT_TXOVR ;
 int WR4 (struct uart_bas*,int ,int) ;
 int cdnc_uart_bus_getsig (struct uart_softc*) ;
 int cdnc_uart_hw_init (struct uart_bas*) ;
 int cdnc_uart_set_params (struct uart_bas*,int ,int ,int ,int ) ;

__attribute__((used)) static int
cdnc_uart_bus_attach(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 struct uart_devinfo *di;

 if (sc->sc_sysdev != ((void*)0)) {
  di = sc->sc_sysdev;
  (void)cdnc_uart_set_params(bas, di->baudrate, di->databits,
        di->stopbits, di->parity);
 } else
  cdnc_uart_hw_init(bas);

 (void)cdnc_uart_bus_getsig(sc);


 WR4(bas, CDNC_UART_IEN_REG,
     CDNC_UART_INT_RXTRIG | CDNC_UART_INT_RXTMOUT |
     CDNC_UART_INT_TXOVR | CDNC_UART_INT_RXOVR |
     CDNC_UART_INT_DMSI);

 return (0);
}
