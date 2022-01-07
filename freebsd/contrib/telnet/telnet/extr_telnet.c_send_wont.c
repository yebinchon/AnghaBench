
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int NETADD (int) ;
 int WONT ;
 scalar_t__ my_state_is_wont (int) ;
 scalar_t__ my_want_state_is_wont (int) ;
 int printoption (char*,int ,int) ;
 int set_my_want_state_wont (int) ;
 scalar_t__ telnetport ;
 scalar_t__* will_wont_resp ;

void
send_wont(int c, int init)
{
    if (init) {
 if (((will_wont_resp[c] == 0) && my_state_is_wont(c)) ||
    my_want_state_is_wont(c))
     return;
 set_my_want_state_wont(c);
 will_wont_resp[c]++;
    }
    if (telnetport < 0)
 return;
    NET2ADD(IAC, WONT);
    NETADD(c);
    printoption("SENT", WONT, c);
}
