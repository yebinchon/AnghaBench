
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_softc {int sc_bas; } ;


 int cdnc_uart_set_params (int *,int,int,int,int) ;

__attribute__((used)) static int
cdnc_uart_bus_param(struct uart_softc *sc, int baudrate, int databits,
     int stopbits, int parity)
{

 return (cdnc_uart_set_params(&sc->sc_bas, baudrate,
        databits, stopbits, parity));
}
