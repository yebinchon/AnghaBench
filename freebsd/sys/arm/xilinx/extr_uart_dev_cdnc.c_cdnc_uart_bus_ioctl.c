
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;


 int CDNC_UART_CTRL_REG ;
 int CDNC_UART_CTRL_REG_STARTBRK ;
 int CDNC_UART_CTRL_REG_STOPBRK ;
 int CDNC_UART_MODEM_CTRL_REG ;
 int CDNC_UART_MODEM_CTRL_REG_RTS ;
 int EINVAL ;
 int RD4 (struct uart_bas*,int ) ;


 int WR4 (struct uart_bas*,int ,int ) ;
 int uart_lock (int ) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
cdnc_uart_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas = &sc->sc_bas;
 uint32_t uart_ctrl, modem_ctrl;
 int error = 0;

 uart_lock(sc->sc_hwmtx);

 switch (request) {
 case 129:
  uart_ctrl = RD4(bas, CDNC_UART_CTRL_REG);
  if (data) {
   uart_ctrl |= CDNC_UART_CTRL_REG_STARTBRK;
   uart_ctrl &= ~CDNC_UART_CTRL_REG_STOPBRK;
  } else {
   uart_ctrl |= CDNC_UART_CTRL_REG_STOPBRK;
   uart_ctrl &= ~CDNC_UART_CTRL_REG_STARTBRK;
  }
  WR4(bas, CDNC_UART_CTRL_REG, uart_ctrl);
  break;
 case 128:
  modem_ctrl = RD4(bas, CDNC_UART_MODEM_CTRL_REG);
  if (data)
   modem_ctrl |= CDNC_UART_MODEM_CTRL_REG_RTS;
  else
   modem_ctrl &= ~CDNC_UART_MODEM_CTRL_REG_RTS;
  WR4(bas, CDNC_UART_MODEM_CTRL_REG, modem_ctrl);
  break;
 default:
  error = EINVAL;
  break;
 }

 uart_unlock(sc->sc_hwmtx);

 return (error);
}
