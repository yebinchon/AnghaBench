
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int aml8726_uart_param (struct uart_bas*,int,int,int,int) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
aml8726_uart_bus_param(struct uart_softc *sc, int baudrate, int databits,
    int stopbits, int parity)
{
 struct uart_bas *bas;
 int error;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 error = aml8726_uart_param(bas, baudrate, databits, stopbits, parity);

 uart_unlock(sc->sc_hwmtx);

 return (error);
}
