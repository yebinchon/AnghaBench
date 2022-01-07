
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_ECHO ;
 int MODE_EDIT ;
 int MODE_FORCE ;
 int TELOPT_ENCRYPT ;
 int TerminalNewMode (int) ;
 int encrypt_output ;
 int encrypt_request_end () ;
 int encrypt_request_start (int ,int ) ;
 int getconnmode () ;
 scalar_t__ my_want_state_is_will (int ) ;

void
setconnmode(int force)
{



    int newmode;

    newmode = getconnmode()|(force?MODE_FORCE:0);

    TerminalNewMode(newmode);
}
