
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_OLD_ENVIRON ;
 int linemode ;
 scalar_t__ my_state_is_will (int) ;
 scalar_t__ my_state_is_wont (int) ;
 scalar_t__ my_want_state_is_will (int) ;
 int send_will (int ,int) ;
 int send_wont (int,int ) ;
 int set_my_state_wont (int) ;
 int set_my_want_state_wont (int) ;
 int setconnmode (int ) ;
 int telopt_environ ;
 scalar_t__* will_wont_resp ;

__attribute__((used)) static void
dontoption(int option)
{

 if (will_wont_resp[option]) {
     --will_wont_resp[option];
     if (will_wont_resp[option] && my_state_is_wont(option))
  --will_wont_resp[option];
 }

 if ((will_wont_resp[option] == 0) && my_want_state_is_will(option)) {
     switch (option) {
     case 129:
  linemode = 0;
  break;
     }

     set_my_want_state_wont(option);
     if (my_state_is_will(option))
  send_wont(option, 0);
     setconnmode(0);
 }
 set_my_state_wont(option);
}
