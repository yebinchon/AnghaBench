
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uart_bas {int dummy; } ;
struct uart_softc {TYPE_1__* sc_sysdev; struct uart_bas sc_bas; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int UART_C2 ;
 int UART_C2_RIE ;
 scalar_t__ UART_DEV_CONSOLE ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
vf_uart_bus_setsig(struct uart_softc *sc, int sig)
{
 struct uart_bas *bas;
 int reg;





 bas = &sc->sc_bas;
 if (sc->sc_sysdev != ((void*)0) && sc->sc_sysdev->type == UART_DEV_CONSOLE) {
  reg = uart_getreg(bas, UART_C2);
  reg |= (UART_C2_RIE);
  uart_setreg(bas, UART_C2, reg);
 }

 return (0);
}
