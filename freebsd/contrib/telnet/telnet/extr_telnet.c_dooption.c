
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int autologin ;
 int env_getvalue (char*) ;
 int kludgelinemode ;
 scalar_t__ my_state_is_will (int const) ;
 scalar_t__ my_want_state_is_wont (int) ;
 int send_do (int const,int) ;
 int send_will (int,int ) ;
 int send_wont (int,int) ;
 int set_my_state_will (int const) ;
 int set_my_state_wont (int const) ;
 int set_my_want_state_will (int const) ;
 int set_my_want_state_wont (int const) ;
 int setconnmode (int ) ;
 int slc_init () ;
 int telopt_environ ;
 scalar_t__* will_wont_resp ;

__attribute__((used)) static void
dooption(int option)
{
 int new_state_ok = 0;

 if (will_wont_resp[option]) {
     --will_wont_resp[option];
     if (will_wont_resp[option] && my_state_is_will(option))
  --will_wont_resp[option];
 }

 if (will_wont_resp[option] == 0) {
   if (my_want_state_is_wont(option)) {

     switch (option) {

     case 131:




  send_will(option, 0);
  set_my_want_state_wont(131);
  set_my_state_wont(131);
  return;

     case 140:
     case 135:
     case 130:
     case 137:
     case 129:
     case 132:



  new_state_ok = 1;
  break;

     case 134:
  new_state_ok = 1;
  break;
     case 128:
  if (env_getvalue("DISPLAY"))
      new_state_ok = 1;
  break;

     case 136:




  set_my_want_state_will(136);
  send_will(option, 0);
  set_my_state_will(136);
  slc_init();
  return;

     case 139:
     default:
  break;
     }

     if (new_state_ok) {
  set_my_want_state_will(option);
  send_will(option, 0);
  setconnmode(0);
     } else {
  will_wont_resp[option]++;
  send_wont(option, 0);
     }
   } else {




     switch (option) {
     case 136:




  set_my_state_will(option);
  slc_init();
  send_do(132, 0);
  return;
     }
   }
 }
 set_my_state_will(option);
}
