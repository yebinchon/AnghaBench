
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_ECHO ;
 int TELOPT_LINEMODE ;
 int TELOPT_SGA ;
 int kludgelinemode ;
 int send_dont (int ,int) ;
 int send_wont (int ,int) ;

__attribute__((used)) static int
dokludgemode(void)
{
    kludgelinemode = 1;
    send_wont(TELOPT_LINEMODE, 1);
    send_dont(TELOPT_SGA, 1);
    send_dont(TELOPT_ECHO, 1);
    return 1;
}
