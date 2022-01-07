
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DONT ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int NETADD (int) ;
 scalar_t__* do_dont_resp ;
 scalar_t__ my_state_is_dont (int) ;
 scalar_t__ my_want_state_is_dont (int) ;
 int printoption (char*,int ,int) ;
 int set_my_want_state_dont (int) ;

void
send_dont(int c, int init)
{
    if (init) {
 if (((do_dont_resp[c] == 0) && my_state_is_dont(c)) ||
    my_want_state_is_dont(c))
     return;
 set_my_want_state_dont(c);
 do_dont_resp[c]++;
    }
    NET2ADD(IAC, DONT);
    NETADD(c);
    printoption("SENT", DONT, c);
}
