
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DO ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int NETADD (int) ;
 scalar_t__* do_dont_resp ;
 scalar_t__ my_state_is_do (int) ;
 scalar_t__ my_want_state_is_do (int) ;
 int printoption (char*,int ,int) ;
 int set_my_want_state_do (int) ;
 scalar_t__ telnetport ;

void
send_do(int c, int init)
{
    if (init) {
 if (((do_dont_resp[c] == 0) && my_state_is_do(c)) ||
    my_want_state_is_do(c))
     return;
 set_my_want_state_do(c);
 do_dont_resp[c]++;
    }
    if (telnetport < 0)
 return;
    NET2ADD(IAC, DO);
    NETADD(c);
    printoption("SENT", DO, c);
}
