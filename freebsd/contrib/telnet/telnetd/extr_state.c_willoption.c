
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ defset; } ;


 int DIAG (int ,int ) ;
 int KLUDGE_LINEMODE ;
 int KLUDGE_OK ;
 int NO_AUTOKLUDGE ;
 int REAL_LINEMODE ;
 int SLC_DEFAULT ;
 int SLC_LEVELBITS ;
 size_t SLC_XOFF ;
 size_t SLC_XON ;
 int TD_OPTIONS ;
 int WILL ;
 int auth_level ;
 void auth_request () ;
 int clientstat (int,int ,int ) ;
 scalar_t__* do_dont_resp ;
 void doclientstat () ;
 void encrypt_send_support () ;
 void flowstat () ;
 scalar_t__ his_state_is_will (int) ;
 scalar_t__ his_want_state_is_wont (int) ;
 int init_termbuf () ;
 int lmodetype ;
 int not42 ;
 int printoption (char*,int) ;
 int send_do (int,int ) ;
 int send_dont (int,int) ;
 int send_wont (int,int) ;
 int set_his_state_will (int) ;
 int set_his_want_state_will (int) ;
 int set_termbuf () ;
 TYPE_2__* slctab ;
 void stub1 () ;
 int tty_binaryin (int) ;

void
willoption(int option)
{
 int changeok = 0;
 void (*func)(void) = 0;





 DIAG(TD_OPTIONS, printoption("td: recv will", option));

 if (do_dont_resp[option]) {
  do_dont_resp[option]--;
  if (do_dont_resp[option] && his_state_is_will(option))
   do_dont_resp[option]--;
 }
 if (do_dont_resp[option] == 0) {
     if (his_want_state_is_wont(option)) {
  switch (option) {

  case 140:
   init_termbuf();
   tty_binaryin(1);
   set_termbuf();
   changeok++;
   break;

  case 139:



   not42 = 0;
   break;

  case 131:
   return;

  case 137:





   slctab[SLC_XON].defset.flag &= ~SLC_LEVELBITS;
   slctab[SLC_XON].defset.flag |= SLC_DEFAULT;
   slctab[SLC_XOFF].defset.flag &= ~SLC_LEVELBITS;
   slctab[SLC_XOFF].defset.flag |= SLC_DEFAULT;
  case 129:
  case 132:
  case 135:
  case 130:
  case 128:
  case 134:
  case 133:
   changeok++;
   break;
  default:
   break;
  }
  if (changeok) {
   set_his_want_state_will(option);
   send_do(option, 0);
  } else {
   do_dont_resp[option]++;
   send_dont(option, 0);
  }
     } else {





  switch (option) {
  case 139:
   not42 = 0;




   send_dont(option, 1);
   break;
  case 137:
   func = flowstat;
   break;
  }
     }
 }
 set_his_state_will(option);
 if (func)
  (*func)();
}
