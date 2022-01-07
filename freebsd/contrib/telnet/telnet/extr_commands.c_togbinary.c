
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_BINARY ;
 int binmode ;
 int donebinarytoggle ;
 scalar_t__ my_want_state_is_do (int ) ;
 scalar_t__ my_want_state_is_dont (int ) ;
 scalar_t__ my_want_state_is_will (int ) ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int printf (char*) ;
 int tel_enter_binary (int) ;
 int tel_leave_binary (int) ;

__attribute__((used)) static int
togbinary(int val)
{
    donebinarytoggle = 1;

    if (val >= 0) {
 binmode = val;
    } else {
 if (my_want_state_is_will(TELOPT_BINARY) &&
    my_want_state_is_do(TELOPT_BINARY)) {
     binmode = 1;
 } else if (my_want_state_is_wont(TELOPT_BINARY) &&
    my_want_state_is_dont(TELOPT_BINARY)) {
     binmode = 0;
 }
 val = binmode ? 0 : 1;
    }

    if (val == 1) {
 if (my_want_state_is_will(TELOPT_BINARY) &&
     my_want_state_is_do(TELOPT_BINARY)) {
     printf("Already operating in binary mode with remote host.\n");
 } else {
     printf("Negotiating binary mode with remote host.\n");
     tel_enter_binary(3);
 }
    } else {
 if (my_want_state_is_wont(TELOPT_BINARY) &&
     my_want_state_is_dont(TELOPT_BINARY)) {
     printf("Already in network ascii mode with remote host.\n");
 } else {
     printf("Negotiating network ascii mode with remote host.\n");
     tel_leave_binary(3);
 }
    }
    return 1;
}
