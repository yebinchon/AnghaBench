
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int KLUDGE_LINEMODE ;
 int NO_LINEMODE ;
 int TD_OPTIONS ;
 int WONT ;
 int cleanup (int ) ;
 int clientstat (int,int ,int ) ;
 int his_state_is_wont (int) ;
 int init_termbuf () ;
 int linemode ;
 int lmodetype ;
 scalar_t__ my_state_is_will (int) ;
 scalar_t__ my_want_state_is_wont (int) ;
 int netflush () ;
 int printoption (char*,int) ;
 int send_will (int const,int ) ;
 int send_wont (int,int ) ;
 int set_my_state_will (int const) ;
 int set_my_state_wont (int) ;
 int set_my_want_state_will (int const) ;
 int set_my_want_state_wont (int) ;
 int set_termbuf () ;
 int tty_binaryout (int) ;
 int tty_setecho (int) ;
 int turn_on_sga ;
 scalar_t__* will_wont_resp ;

void
dooption(int option)
{
 int changeok = 0;





 DIAG(TD_OPTIONS, printoption("td: recv do", option));

 if (will_wont_resp[option]) {
  will_wont_resp[option]--;
  if (will_wont_resp[option] && my_state_is_will(option))
   will_wont_resp[option]--;
 }
 if ((will_wont_resp[option] == 0) && (my_want_state_is_wont(option))) {
  switch (option) {
  case 141:







   {
    init_termbuf();
    tty_setecho(1);
    set_termbuf();
   }
   changeok++;
   break;

  case 142:
   init_termbuf();
   tty_binaryout(1);
   set_termbuf();
   changeok++;
   break;

  case 133:
   turn_on_sga = 0;

   changeok++;
   break;

  case 132:
   changeok++;
   break;

  case 131:




   send_will(option, 0);
   set_my_want_state_wont(option);
   set_my_state_wont(option);
   return;

  case 137:






   set_my_want_state_will(137);
   send_will(137, 0);
   set_my_state_will(137);
   (void)netflush();
   cleanup(0);

   break;






  case 138:
  case 129:
  case 136:
  case 130:
  case 139:
  case 128:



  case 134:
  default:
   break;
  }
  if (changeok) {
   set_my_want_state_will(option);
   send_will(option, 0);
  } else {
   will_wont_resp[option]++;
   send_wont(option, 0);
  }
 }
 set_my_state_will(option);

}
