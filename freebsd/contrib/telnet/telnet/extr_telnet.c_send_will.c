
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int NETADD (int) ;
 int WILL ;
 scalar_t__ my_state_is_will (int) ;
 scalar_t__ my_want_state_is_will (int) ;
 int printoption (char*,int ,int) ;
 int set_my_want_state_will (int) ;
 scalar_t__ telnetport ;
 scalar_t__* will_wont_resp ;

void
send_will(int c, int init)
{
    if (init) {
 if (((will_wont_resp[c] == 0) && my_state_is_will(c)) ||
    my_want_state_is_will(c))
     return;
 set_my_want_state_will(c);
 will_wont_resp[c]++;
    }
    if (telnetport < 0)
 return;
    NET2ADD(IAC, WILL);
    NETADD(c);
    printoption("SENT", WILL, c);
}
