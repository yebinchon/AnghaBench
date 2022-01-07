
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int TD_OPTIONS ;
 scalar_t__ my_state_is_wont (int) ;
 scalar_t__ my_want_state_is_wont (int) ;
 int output_data (char const*,int) ;
 int printoption (char*,int) ;
 int set_my_want_state_wont (int) ;
 scalar_t__* will_wont_resp ;
 scalar_t__ wont ;

void
send_wont(int option, int init)
{
 if (init) {
  if ((will_wont_resp[option] == 0 && my_state_is_wont(option)) ||
      my_want_state_is_wont(option))
   return;
  set_my_want_state_wont(option);
  will_wont_resp[option]++;
 }
 output_data((const char *)wont, option);

 DIAG(TD_OPTIONS, printoption("td: send wont", option));
}
