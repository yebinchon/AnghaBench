
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_bas {int rclk; } ;


 int EINVAL ;
 int SSCOM_UBRDIV ;
 int SSCOM_ULCON ;





 int ULCON_LENGTH_5 ;
 int ULCON_LENGTH_6 ;
 int ULCON_LENGTH_7 ;
 int ULCON_LENGTH_8 ;
 int ULCON_PARITY_EVEN ;
 int ULCON_PARITY_NONE ;
 int ULCON_PARITY_ODD ;
 int ULCON_STOP ;
 int sscomspeed (int,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
exynos4210_uart_param(struct uart_bas *bas, int baudrate, int databits,
    int stopbits, int parity)
{
 int brd, ulcon;

 ulcon = 0;

 switch(databits) {
 case 5:
  ulcon |= ULCON_LENGTH_5;
  break;
 case 6:
  ulcon |= ULCON_LENGTH_6;
  break;
 case 7:
  ulcon |= ULCON_LENGTH_7;
  break;
 case 8:
  ulcon |= ULCON_LENGTH_8;
  break;
 default:
  return (EINVAL);
 }

 switch (parity) {
 case 130:
  ulcon |= ULCON_PARITY_NONE;
  break;
 case 129:
  ulcon |= ULCON_PARITY_ODD;
  break;
 case 132:
  ulcon |= ULCON_PARITY_EVEN;
  break;
 case 131:
 case 128:
 default:
  return (EINVAL);
 }

 if (stopbits == 2)
  ulcon |= ULCON_STOP;

 uart_setreg(bas, SSCOM_ULCON, ulcon);

 brd = sscomspeed(baudrate, bas->rclk);
 uart_setreg(bas, SSCOM_UBRDIV, brd);

 return (0);
}
