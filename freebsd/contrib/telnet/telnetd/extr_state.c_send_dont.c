
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int TD_OPTIONS ;
 scalar_t__* do_dont_resp ;
 scalar_t__ dont ;
 scalar_t__ his_state_is_wont (int) ;
 scalar_t__ his_want_state_is_wont (int) ;
 int output_data (char const*,int) ;
 int printoption (char*,int) ;
 int set_his_want_state_wont (int) ;

void
send_dont(int option, int init)
{
 if (init) {
  if ((do_dont_resp[option] == 0 && his_state_is_wont(option)) ||
      his_want_state_is_wont(option))
   return;
  set_his_want_state_wont(option);
  do_dont_resp[option]++;
 }
 output_data((const char *)dont, option);

 DIAG(TD_OPTIONS, printoption("td: send dont", option));
}
