
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int TD_OPTIONS ;
 int TELOPT_TM ;
 scalar_t__* do_dont_resp ;
 scalar_t__ doopt ;
 scalar_t__ his_state_is_will (int) ;
 scalar_t__ his_want_state_is_will (int) ;
 int output_data (char const*,int) ;
 int printoption (char*,int) ;
 int set_his_want_state_will (int) ;
 int set_his_want_state_wont (int) ;

void
send_do(int option, int init)
{
 if (init) {
  if ((do_dont_resp[option] == 0 && his_state_is_will(option)) ||
      his_want_state_is_will(option))
   return;





  if (option == TELOPT_TM)
   set_his_want_state_wont(option);
  else
   set_his_want_state_will(option);
  do_dont_resp[option]++;
 }
 output_data((const char *)doopt, option);

 DIAG(TD_OPTIONS, printoption("td: send do", option));
}
