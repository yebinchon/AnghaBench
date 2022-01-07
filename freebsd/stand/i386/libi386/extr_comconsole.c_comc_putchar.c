
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int COMC_TXWAIT ;
 int LSR_TXRDY ;
 scalar_t__ com_data ;
 scalar_t__ com_lsr ;
 scalar_t__ comc_port ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int ) ;

__attribute__((used)) static void
comc_putchar(int c)
{
 int wait;

 for (wait = COMC_TXWAIT; wait > 0; wait--)
  if (inb(comc_port + com_lsr) & LSR_TXRDY) {
   outb(comc_port + com_data, (u_char)c);
   break;
  }
}
