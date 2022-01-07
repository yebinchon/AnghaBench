
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* do_dont_resp ;
 int encrypt_send_support () ;
 int flushout ;
 int modenegotiated ;
 scalar_t__ my_state_is_do (int) ;
 scalar_t__ my_want_state_is_dont (int) ;
 int send_do (int,int ) ;
 int send_dont (int,int ) ;
 int set_my_state_do (int) ;
 int set_my_state_dont (int) ;
 int set_my_want_state_do (int) ;
 int set_my_want_state_dont (int) ;
 int setconnmode (int ) ;
 int settimer (int ) ;

void
willoption(int option)
{
 int new_state_ok = 0;

 if (do_dont_resp[option]) {
     --do_dont_resp[option];
     if (do_dont_resp[option] && my_state_is_do(option))
  --do_dont_resp[option];
 }

 if ((do_dont_resp[option] == 0) && my_want_state_is_dont(option)) {

     switch (option) {

     case 133:
     case 134:
     case 130:
  settimer(modenegotiated);

     case 129:






  new_state_ok = 1;
  break;

     case 128:
  if (flushout)
      flushout = 0;




  set_my_want_state_dont(option);
  set_my_state_dont(option);
  return;

     case 131:
     default:
  break;
     }

     if (new_state_ok) {
  set_my_want_state_do(option);
  send_do(option, 0);
  setconnmode(0);
     } else {
  do_dont_resp[option]++;
  send_dont(option, 0);
     }
 }
 set_my_state_do(option);




}
