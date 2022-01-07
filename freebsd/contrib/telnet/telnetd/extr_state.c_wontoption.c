
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flag; } ;
struct TYPE_4__ {TYPE_1__ defset; } ;


 int AUTH_REJECT ;
 int DIAG (int ,int ) ;
 int KLUDGE_LINEMODE ;
 int NO_AUTOKLUDGE ;
 int NO_LINEMODE ;
 int REAL_LINEMODE ;
 int SLC_CANTCHANGE ;
 int SLC_LEVELBITS ;
 size_t SLC_XOFF ;
 size_t SLC_XON ;
 int TD_OPTIONS ;







 int const TELOPT_SGA ;




 int WONT ;
 int auth_finished (int ,int ) ;
 int clientstat (int const,int ,int ) ;
 scalar_t__* do_dont_resp ;
 int environsubopt ;
 scalar_t__ his_state_is_will (int) ;
 scalar_t__ his_state_is_wont (int) ;
 scalar_t__ his_want_state_is_will (int) ;
 int init_termbuf () ;
 int lmodetype ;
 int not42 ;
 int oenvironsubopt ;
 int printoption (char*,int) ;
 int send_dont (int,int ) ;
 int send_will (int const,int) ;
 int set_his_state_wont (int) ;
 int set_his_want_state_wont (int const) ;
 int set_termbuf () ;
 int settimer (int ) ;
 TYPE_2__* slctab ;
 int tspeedsubopt ;
 int tty_binaryin (int ) ;
 int ttypesubopt ;
 int xdisplocsubopt ;

void
wontoption(int option)
{




 DIAG(TD_OPTIONS, printoption("td: recv wont", option));

 if (do_dont_resp[option]) {
  do_dont_resp[option]--;
  if (do_dont_resp[option] && his_state_is_wont(option))
   do_dont_resp[option]--;
 }
 if (do_dont_resp[option] == 0) {
     if (his_want_state_is_will(option)) {

  switch (option) {
  case 136:
   not42 = 1;
   break;

  case 137:
   init_termbuf();
   tty_binaryin(0);
   set_termbuf();
   break;
  case 131:






   set_his_want_state_wont(131);
   return;

  case 135:





   slctab[SLC_XON].defset.flag &= ~SLC_LEVELBITS;
   slctab[SLC_XON].defset.flag |= SLC_CANTCHANGE;
   slctab[SLC_XOFF].defset.flag &= ~SLC_LEVELBITS;
   slctab[SLC_XOFF].defset.flag |= SLC_CANTCHANGE;
   break;
  case 129:
   settimer(ttypesubopt);
   break;

  case 130:
   settimer(tspeedsubopt);
   break;

  case 128:
   settimer(xdisplocsubopt);
   break;

  case 132:
   settimer(oenvironsubopt);
   break;

  case 133:
   settimer(environsubopt);
   break;

  default:
   break;
  }
  set_his_want_state_wont(option);
  if (his_state_is_will(option))
   send_dont(option, 0);
     } else {
  switch (option) {
  case 131:
   break;






  default:
   break;
  }
     }
 }
 set_his_state_wont(option);

}
