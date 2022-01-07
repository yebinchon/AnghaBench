
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_ECHO ;
 int TELOPT_LINEMODE ;
 int TELOPT_SGA ;
 scalar_t__ kludgelinemode ;
 int send_do (int ,int) ;
 int send_wont (int ,int) ;

__attribute__((used)) static int
docharmode(void)
{





    send_wont(TELOPT_LINEMODE, 1);
    send_do(TELOPT_ECHO, 1);
    return 1;
}
