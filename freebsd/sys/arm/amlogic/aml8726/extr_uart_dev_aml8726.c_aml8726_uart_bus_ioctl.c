
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int rclk; } ;
struct uart_softc {int sc_hwmtx; struct uart_bas sc_bas; } ;





 int AML_UART_CONTROL_BAUD_MASK ;
 int AML_UART_CONTROL_BAUD_WIDTH ;
 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_TWO_WIRE_EN ;
 int AML_UART_MISC_BAUD_EXT_MASK ;
 int AML_UART_MISC_BAUD_EXT_SHIFT ;
 int AML_UART_MISC_REG ;
 int AML_UART_NEW_BAUD_RATE_EN ;
 int AML_UART_NEW_BAUD_RATE_MASK ;
 int AML_UART_NEW_BAUD_RATE_SHIFT ;
 int AML_UART_NEW_BAUD_REG ;
 int EINVAL ;
 int ENXIO ;



 int aml8726_soc_hw_rev ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_lock (int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;
 int uart_unlock (int ) ;

__attribute__((used)) static int
aml8726_uart_bus_ioctl(struct uart_softc *sc, int request, intptr_t data)
{
 struct uart_bas *bas;
 int baudrate, divisor, error;
 uint32_t cr, mr, nbr;

 bas = &sc->sc_bas;
 uart_lock(sc->sc_hwmtx);

 error = 0;
 switch (request) {
 case 130:
  cr = uart_getreg(bas, AML_UART_CONTROL_REG);
  cr &= AML_UART_CONTROL_BAUD_MASK;

  mr = uart_getreg(bas, AML_UART_MISC_REG);
  mr &= AML_UART_MISC_BAUD_EXT_MASK;

  divisor = ((mr >> AML_UART_MISC_BAUD_EXT_SHIFT) <<
      AML_UART_CONTROL_BAUD_WIDTH) | cr;

  switch (aml8726_soc_hw_rev) {
  case 133:
  case 132:
  case 131:
   nbr = uart_getreg(bas, AML_UART_NEW_BAUD_REG);
   if ((nbr & AML_UART_NEW_BAUD_RATE_EN) != 0) {
    divisor = (nbr & AML_UART_NEW_BAUD_RATE_MASK) >>
        AML_UART_NEW_BAUD_RATE_SHIFT;
   }
   break;
  default:
   break;
  }

  baudrate = bas->rclk / 4 / (divisor + 1);
  if (baudrate > 0)
   *(int*)data = baudrate;
  else
   error = ENXIO;
  break;

 case 129:
 case 128:
  cr = uart_getreg(bas, AML_UART_CONTROL_REG);
  if (data)
   cr &= ~AML_UART_CONTROL_TWO_WIRE_EN;
  else
   cr |= AML_UART_CONTROL_TWO_WIRE_EN;
  uart_setreg(bas, AML_UART_CONTROL_REG, cr);
  break;

 default:
  error = EINVAL;
  break;
 }

 uart_unlock(sc->sc_hwmtx);

 return (error);
}
