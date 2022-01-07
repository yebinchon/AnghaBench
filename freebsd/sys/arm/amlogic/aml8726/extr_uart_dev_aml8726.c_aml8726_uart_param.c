
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct uart_bas {int rclk; } ;





 int AML_UART_CONTROL_1_SB ;
 int AML_UART_CONTROL_2_SB ;
 int AML_UART_CONTROL_5_DB ;
 int AML_UART_CONTROL_6_DB ;
 int AML_UART_CONTROL_7_DB ;
 int AML_UART_CONTROL_8_DB ;
 int AML_UART_CONTROL_BAUD_MASK ;
 int AML_UART_CONTROL_BAUD_WIDTH ;
 int AML_UART_CONTROL_DB_MASK ;
 int AML_UART_CONTROL_P_EN ;
 int AML_UART_CONTROL_P_EVEN ;
 int AML_UART_CONTROL_P_MASK ;
 int AML_UART_CONTROL_P_ODD ;
 int AML_UART_CONTROL_REG ;
 int AML_UART_CONTROL_SB_MASK ;
 int AML_UART_MISC_BAUD_EXT_MASK ;
 int AML_UART_MISC_BAUD_EXT_SHIFT ;
 int AML_UART_MISC_OLD_RX_BAUD ;
 int AML_UART_MISC_REG ;
 int AML_UART_NEW_BAUD_RATE_EN ;
 int AML_UART_NEW_BAUD_RATE_MASK ;
 int AML_UART_NEW_BAUD_RATE_SHIFT ;
 int AML_UART_NEW_BAUD_REG ;
 int AML_UART_NEW_BAUD_USE_XTAL_CLK ;
 int EINVAL ;



 int aml8726_soc_hw_rev ;
 int aml8726_uart_divisor (int,int) ;
 int uart_barrier (struct uart_bas*) ;
 int uart_getreg (struct uart_bas*,int ) ;
 int uart_setreg (struct uart_bas*,int ,int) ;

__attribute__((used)) static int
aml8726_uart_param(struct uart_bas *bas, int baudrate, int databits, int stopbits,
    int parity)
{
 uint32_t cr;
 uint32_t mr;
 uint32_t nbr;
 int divisor;

 cr = uart_getreg(bas, AML_UART_CONTROL_REG);

 cr &= ~(AML_UART_CONTROL_DB_MASK | AML_UART_CONTROL_SB_MASK |
     AML_UART_CONTROL_P_MASK);

 switch (databits) {
 case 5: cr |= AML_UART_CONTROL_5_DB; break;
 case 6: cr |= AML_UART_CONTROL_6_DB; break;
 case 7: cr |= AML_UART_CONTROL_7_DB; break;
 case 8: cr |= AML_UART_CONTROL_8_DB; break;
 default: return (EINVAL);
 }

 switch (stopbits) {
 case 1: cr |= AML_UART_CONTROL_1_SB; break;
 case 2: cr |= AML_UART_CONTROL_2_SB; break;
 default: return (EINVAL);
 }

 switch (parity) {
 case 130: cr |= AML_UART_CONTROL_P_EVEN;
    cr |= AML_UART_CONTROL_P_EN;
    break;

 case 128: cr |= AML_UART_CONTROL_P_ODD;
    cr |= AML_UART_CONTROL_P_EN;
    break;

 case 129: break;

 default: return (EINVAL);
 }


 if (baudrate > 0 && bas->rclk != 0) {
  divisor = aml8726_uart_divisor(bas->rclk / 4, baudrate) - 1;

  switch (aml8726_soc_hw_rev) {
  case 133:
  case 132:
  case 131:
   if (divisor > (AML_UART_NEW_BAUD_RATE_MASK >>
       AML_UART_NEW_BAUD_RATE_SHIFT))
    return (EINVAL);

   nbr = uart_getreg(bas, AML_UART_NEW_BAUD_REG);
   nbr &= ~(AML_UART_NEW_BAUD_USE_XTAL_CLK |
       AML_UART_NEW_BAUD_RATE_MASK);
   nbr |= AML_UART_NEW_BAUD_RATE_EN |
       (divisor << AML_UART_NEW_BAUD_RATE_SHIFT);
   uart_setreg(bas, AML_UART_NEW_BAUD_REG, nbr);

   divisor = 0;
   break;
  default:
   if (divisor > 0xffff)
    return (EINVAL);
   break;
  }

  cr &= ~AML_UART_CONTROL_BAUD_MASK;
  cr |= (divisor & AML_UART_CONTROL_BAUD_MASK);

  divisor >>= AML_UART_CONTROL_BAUD_WIDTH;

  mr = uart_getreg(bas, AML_UART_MISC_REG);
  mr &= ~(AML_UART_MISC_OLD_RX_BAUD |
      AML_UART_MISC_BAUD_EXT_MASK);
  mr |= ((divisor << AML_UART_MISC_BAUD_EXT_SHIFT) &
      AML_UART_MISC_BAUD_EXT_MASK);
  uart_setreg(bas, AML_UART_MISC_REG, mr);
 }

 uart_setreg(bas, AML_UART_CONTROL_REG, cr);
 uart_barrier(bas);

 return (0);
}
