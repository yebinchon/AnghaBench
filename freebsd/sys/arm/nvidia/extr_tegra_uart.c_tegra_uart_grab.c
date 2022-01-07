
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;
struct ns8250_softc {int ier_mask; } ;


 int REG_FCR ;
 int REG_IER ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static void
tegra_uart_grab(struct uart_softc *sc)
{
 struct uart_bas *bas = &sc->sc_bas;
 struct ns8250_softc *ns8250 = (struct ns8250_softc*)sc;
 u_char ier;






 uart_lock(sc->sc_hwmtx);
 ier = uart_getreg(bas, REG_IER);
 uart_setreg(bas, REG_IER, ier & ns8250->ier_mask);
 uart_setreg(bas, REG_FCR, 0);
 uart_barrier(bas);
 uart_unlock(sc->sc_hwmtx);
}
