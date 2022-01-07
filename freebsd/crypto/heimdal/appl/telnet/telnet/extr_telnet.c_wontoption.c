
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* do_dont_resp ;
 int encrypt_not () ;
 scalar_t__ flushout ;
 int kludgelinemode ;
 int modenegotiated ;
 scalar_t__ my_state_is_do (int) ;
 scalar_t__ my_state_is_dont (int) ;
 scalar_t__ my_want_state_is_do (int) ;
 int send_dont (int,int ) ;
 int set_my_state_dont (int) ;
 int set_my_want_state_dont (int) ;
 int setconnmode (int ) ;
 int settimer (int ) ;

void
wontoption(int option)
{
 if (do_dont_resp[option]) {
     --do_dont_resp[option];
     if (do_dont_resp[option] && my_state_is_dont(option))
  --do_dont_resp[option];
 }

 if ((do_dont_resp[option] == 0) && my_want_state_is_do(option)) {

     switch (option) {







     case 131:
  settimer(modenegotiated);
  break;

     case 128:
  if (flushout)
      flushout = 0;
  set_my_want_state_dont(option);
  set_my_state_dont(option);
  return;






     default:
  break;
     }
     set_my_want_state_dont(option);
     if (my_state_is_do(option))
  send_dont(option, 0);
     setconnmode(0);
 } else if (option == 128) {



     if (flushout)
  flushout = 0;
     set_my_want_state_dont(option);
 }
 set_my_state_dont(option);
}
