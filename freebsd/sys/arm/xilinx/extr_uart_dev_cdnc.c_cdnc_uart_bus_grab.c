
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_bas; } ;


 int CDNC_UART_IEN_REG ;
 int CDNC_UART_INT_DMSI ;
 int CDNC_UART_INT_RXOVR ;
 int CDNC_UART_INT_TXOVR ;
 int WR4 (int *,int ,int) ;

__attribute__((used)) static void
cdnc_uart_bus_grab(struct uart_softc *sc)
{


 WR4(&sc->sc_bas, CDNC_UART_IEN_REG,
     CDNC_UART_INT_TXOVR | CDNC_UART_INT_RXOVR |
     CDNC_UART_INT_DMSI);
}
