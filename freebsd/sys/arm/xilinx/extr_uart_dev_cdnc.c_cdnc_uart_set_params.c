
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int dummy; } ;


 int CDNC_UART_MODE_REG ;
 int CDNC_UART_MODE_REG_6BIT ;
 int CDNC_UART_MODE_REG_7BIT ;
 int CDNC_UART_MODE_REG_8BIT ;
 int CDNC_UART_MODE_REG_PAR_EVEN ;
 int CDNC_UART_MODE_REG_PAR_MARK ;
 int CDNC_UART_MODE_REG_PAR_NONE ;
 int CDNC_UART_MODE_REG_PAR_ODD ;
 int CDNC_UART_MODE_REG_PAR_SPACE ;
 int CDNC_UART_MODE_REG_STOP2 ;
 int EINVAL ;





 int WR4 (struct uart_bas*,int ,int ) ;
 scalar_t__ cdnc_uart_set_baud (struct uart_bas*,int) ;

__attribute__((used)) static int
cdnc_uart_set_params(struct uart_bas *bas, int baudrate, int databits,
        int stopbits, int parity)
{
 uint32_t mode_reg_value = 0;

 switch (databits) {
 case 6:
  mode_reg_value |= CDNC_UART_MODE_REG_6BIT;
  break;
 case 7:
  mode_reg_value |= CDNC_UART_MODE_REG_7BIT;
  break;
 case 8:
 default:
  mode_reg_value |= CDNC_UART_MODE_REG_8BIT;
  break;
 }

 if (stopbits == 2)
  mode_reg_value |= CDNC_UART_MODE_REG_STOP2;

 switch (parity) {
 case 131:
  mode_reg_value |= CDNC_UART_MODE_REG_PAR_MARK;
  break;
 case 128:
  mode_reg_value |= CDNC_UART_MODE_REG_PAR_SPACE;
  break;
 case 129:
  mode_reg_value |= CDNC_UART_MODE_REG_PAR_ODD;
  break;
 case 132:
  mode_reg_value |= CDNC_UART_MODE_REG_PAR_EVEN;
  break;
 case 130:
 default:
  mode_reg_value |= CDNC_UART_MODE_REG_PAR_NONE;
  break;
 }

 WR4(bas, CDNC_UART_MODE_REG, mode_reg_value);

 if (baudrate > 0 && cdnc_uart_set_baud(bas, baudrate) < 0)
  return (EINVAL);

 return(0);
}
