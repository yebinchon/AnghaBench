
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_BINARY ;
 int donebinarytoggle ;
 scalar_t__ my_want_state_is_will (int ) ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int printf (char*) ;
 int tel_enter_binary (int) ;
 int tel_leave_binary (int) ;

__attribute__((used)) static int
togxbinary(int val)
{
    donebinarytoggle = 1;

    if (val == -1)
 val = my_want_state_is_will(TELOPT_BINARY) ? 0 : 1;

    if (val == 1) {
 if (my_want_state_is_will(TELOPT_BINARY)) {
     printf("Already transmitting in binary mode.\n");
 } else {
     printf("Negotiating binary mode on output.\n");
     tel_enter_binary(2);
 }
    } else {
 if (my_want_state_is_wont(TELOPT_BINARY)) {
     printf("Already transmitting in network ascii mode.\n");
 } else {
     printf("Negotiating network ascii mode on output.\n");
     tel_leave_binary(2);
 }
    }
    return 1;
}
