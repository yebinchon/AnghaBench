
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG (int ,int ) ;
 int TD_OPTIONS ;
 scalar_t__ my_state_is_will (int) ;
 scalar_t__ my_want_state_is_will (int) ;
 int output_data (char const*,int) ;
 int printoption (char*,int) ;
 int set_my_want_state_will (int) ;
 scalar_t__ will ;
 scalar_t__* will_wont_resp ;

void
send_will(int option, int init)
{
    if (init) {
 if ((will_wont_resp[option] == 0 && my_state_is_will(option))||
     my_want_state_is_will(option))
     return;
 set_my_want_state_will(option);
 will_wont_resp[option]++;
    }
    output_data ((const char *)will, option);

    DIAG(TD_OPTIONS, printoption("td: send will", option));
}
