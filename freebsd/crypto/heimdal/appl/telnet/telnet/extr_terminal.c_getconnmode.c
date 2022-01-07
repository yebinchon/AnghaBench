
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ echotoggle; scalar_t__ modenegotiated; } ;


 int MODE_ECHO ;
 int MODE_EDIT ;
 int MODE_FLOW ;
 int MODE_INBIN ;
 int MODE_OUT8 ;
 int MODE_OUTBIN ;
 int MODE_TRAPSIG ;
 int TELOPT_BINARY ;
 int TELOPT_ECHO ;
 int TELOPT_LINEMODE ;
 int TELOPT_SGA ;
 TYPE_1__ clocks ;
 scalar_t__ dontlecho ;
 int eight ;
 scalar_t__ his_want_state_is_will (int ) ;
 scalar_t__ kludgelinemode ;
 int linemode ;
 scalar_t__ localflow ;
 scalar_t__ my_want_state_is_dont (int ) ;
 scalar_t__ my_want_state_is_will (int ) ;

int
getconnmode(void)
{
    int mode = 0;

    if (my_want_state_is_dont(TELOPT_ECHO))
 mode |= MODE_ECHO;

    if (localflow)
 mode |= MODE_FLOW;

    if ((eight & 1) || my_want_state_is_will(TELOPT_BINARY))
 mode |= MODE_INBIN;

    if (eight & 2)
 mode |= MODE_OUT8;
    if (his_want_state_is_will(TELOPT_BINARY))
 mode |= MODE_OUTBIN;
    if (my_want_state_is_will(TELOPT_LINEMODE))
 mode |= linemode;
    return(mode);
}
