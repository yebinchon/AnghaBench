
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;


 int CFCR_DLAB ;
 int COMC_DIV2BPS (int) ;
 int COMSPEED ;
 scalar_t__ com_cfcr ;
 scalar_t__ com_dlbh ;
 scalar_t__ com_dlbl ;
 scalar_t__ comc_port ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;

__attribute__((used)) static int
comc_getspeed(void)
{
 u_int divisor;
 u_char dlbh;
 u_char dlbl;
 u_char cfcr;

 cfcr = inb(comc_port + com_cfcr);
 outb(comc_port + com_cfcr, CFCR_DLAB | cfcr);

 dlbl = inb(comc_port + com_dlbl);
 dlbh = inb(comc_port + com_dlbh);

 outb(comc_port + com_cfcr, cfcr);

 divisor = dlbh << 8 | dlbl;


 if (divisor == 0)
  return (COMSPEED);
 return (COMC_DIV2BPS(divisor));
}
