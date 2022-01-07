
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
typedef int local_host ;


 int Exit (int) ;
 int MODE_TRAPSIG ;
 int Scheduler (int) ;
 int TELOPT_AUTHENTICATION ;
 int TELOPT_ENCRYPT ;
 int TELOPT_LFLOW ;
 int TELOPT_LINEMODE ;
 int TELOPT_NAWS ;
 int TELOPT_NEW_ENVIRON ;
 int TELOPT_SGA ;
 int TELOPT_STATUS ;
 int TELOPT_TSPEED ;
 int TELOPT_TTYPE ;
 int TELOPT_XDISPLOC ;
 int TerminalNewMode (int) ;
 int auth_encrypt_init (char*,int ,char*,int ) ;
 int auth_encrypt_user (char*) ;
 scalar_t__ auth_has_failed ;
 scalar_t__ autologin ;
 scalar_t__ binary ;
 scalar_t__ encrypt_is_encrypting () ;
 scalar_t__ env_getvalue (unsigned char*) ;
 int getconnmode () ;
 int gethostname (char*,int) ;
 int hostname ;
 scalar_t__ intr_happened ;
 int intr_waiting ;
 scalar_t__ my_want_state_is_dont (int ) ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int printf (char*) ;
 int send_do (int ,int) ;
 int send_will (int ,int) ;
 int setcommandmode () ;
 int setconnmode (int ) ;
 int sys_telnet_init () ;
 int tel_enter_binary (scalar_t__) ;
 scalar_t__ telnet_spin () ;
 scalar_t__ telnetport ;
 scalar_t__ time (int ) ;
 int wantencryption ;

void
my_telnet(char *user)
{
    int printed_encrypt = 0;

    sys_telnet_init();
    if (telnetport) {
 send_do(TELOPT_SGA, 1);
 send_will(TELOPT_TTYPE, 1);
 send_will(TELOPT_NAWS, 1);
 send_will(TELOPT_TSPEED, 1);
 send_will(TELOPT_LFLOW, 1);
 send_will(TELOPT_LINEMODE, 1);
 send_will(TELOPT_NEW_ENVIRON, 1);
 send_do(TELOPT_STATUS, 1);
 if (env_getvalue((unsigned char *)"DISPLAY"))
     send_will(TELOPT_XDISPLOC, 1);
 if (binary)
     tel_enter_binary(binary);
    }
    for (;;) {
 int schedValue;

 while ((schedValue = Scheduler(0)) != 0) {
     if (schedValue == -1) {
  setcommandmode();
  return;
     }
 }

 if (Scheduler(1) == -1) {
     setcommandmode();
     return;
 }
    }
}
