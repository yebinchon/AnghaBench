
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int TD_OPTIONS ;



 int init_termbuf () ;
 scalar_t__ my_state_is_will (int) ;
 scalar_t__ my_state_is_wont (int) ;
 scalar_t__ my_want_state_is_will (int) ;
 int printoption (char*,int) ;
 int send_will (int,int) ;
 int send_wont (int,int ) ;
 int set_my_state_wont (int) ;
 int set_my_want_state_wont (int) ;
 int set_termbuf () ;
 int tty_binaryout (int ) ;
 int tty_setecho (int ) ;
 int turn_on_sga ;
 scalar_t__* will_wont_resp ;

void
dontoption(int option)
{





    DIAG(TD_OPTIONS, printoption("td: recv dont", option));

    if (will_wont_resp[option]) {
 will_wont_resp[option]--;
 if (will_wont_resp[option] && my_state_is_wont(option))
     will_wont_resp[option]--;
    }
    if ((will_wont_resp[option] == 0) && (my_want_state_is_will(option))) {
 switch (option) {
 case 130:
     init_termbuf();
     tty_binaryout(0);
     set_termbuf();
     break;

 case 129:
     {
  init_termbuf();
  tty_setecho(0);
  set_termbuf();
     }
 break;

 case 128:
     set_my_want_state_wont(option);
     if (my_state_is_will(option))
  send_wont(option, 0);
     set_my_state_wont(option);
     if (turn_on_sga ^= 1)
  send_will(option, 1);
     return;

 default:
     break;
 }

 set_my_want_state_wont(option);
 if (my_state_is_will(option))
     send_wont(option, 0);
    }
    set_my_state_wont(option);

}
