
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int LFLOW_OFF ;
 int LFLOW_ON ;
 int LFLOW_RESTART_ANY ;
 int LFLOW_RESTART_XON ;
 int SB ;
 int SE ;
 int TELOPT_LFLOW ;
 scalar_t__ flowmode ;
 scalar_t__ his_state_is_will (int ) ;
 int output_data (char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ restartany ;
 scalar_t__ tty_flowmode () ;
 scalar_t__ tty_restartany () ;

void
flowstat(void)
{
 if (his_state_is_will(TELOPT_LFLOW)) {
  if (tty_flowmode() != flowmode) {
   flowmode = tty_flowmode();
   output_data("%c%c%c%c%c%c",
     IAC, SB, TELOPT_LFLOW,
     flowmode ? LFLOW_ON : LFLOW_OFF,
     IAC, SE);
  }
  if (tty_restartany() != restartany) {
   restartany = tty_restartany();
   output_data("%c%c%c%c%c%c",
     IAC, SB, TELOPT_LFLOW,
     restartany ? LFLOW_RESTART_ANY
         : LFLOW_RESTART_XON,
     IAC, SE);
  }
 }
}
