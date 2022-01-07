
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LSR_RXRDY ;
 scalar_t__ com_lsr ;
 scalar_t__ comc_port ;
 int inb (scalar_t__) ;

__attribute__((used)) static int
comc_ischar(void)
{
 return (inb(comc_port + com_lsr) & LSR_RXRDY);
}
