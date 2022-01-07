
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_flags; } ;


 int CFCR_DLAB ;
 int COMC_BPS (int) ;
 int COMC_FMT ;
 int C_ACTIVEIN ;
 int C_ACTIVEOUT ;
 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 int EV_VOLATILE ;
 int LSR_RXRDY ;
 int MCR_DTR ;
 int MCR_RTS ;
 scalar_t__ com_cfcr ;
 scalar_t__ com_data ;
 scalar_t__ com_dlbh ;
 scalar_t__ com_dlbl ;
 scalar_t__ com_lsr ;
 scalar_t__ com_mcr ;
 int comc_curspeed ;
 int comc_port ;
 TYPE_1__ comconsole ;
 int env_setenv (char*,int ,char*,int *,int *) ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;
 int sprintf (char*,char*,int,int) ;
 int unsetenv (char*) ;

__attribute__((used)) static void
comc_setup(int speed, int port)
{
 static int TRY_COUNT = 1000000;
 char intbuf[64];
 int tries;

 unsetenv("hw.uart.console");
 comc_curspeed = speed;
 comc_port = port;
 if ((comconsole.c_flags & (C_ACTIVEIN | C_ACTIVEOUT)) == 0)
  return;

 outb(comc_port + com_cfcr, CFCR_DLAB | COMC_FMT);
 outb(comc_port + com_dlbl, COMC_BPS(speed) & 0xff);
 outb(comc_port + com_dlbh, COMC_BPS(speed) >> 8);
 outb(comc_port + com_cfcr, COMC_FMT);
 outb(comc_port + com_mcr, MCR_RTS | MCR_DTR);

 tries = 0;
 do
  inb(comc_port + com_data);
 while (inb(comc_port + com_lsr) & LSR_RXRDY && ++tries < TRY_COUNT);

 if (tries < TRY_COUNT) {
  comconsole.c_flags |= (C_PRESENTIN | C_PRESENTOUT);
  sprintf(intbuf, "io:%d,br:%d", comc_port, comc_curspeed);
  env_setenv("hw.uart.console", EV_VOLATILE, intbuf, ((void*)0), ((void*)0));
 } else
  comconsole.c_flags &= ~(C_PRESENTIN | C_PRESENTOUT);
}
