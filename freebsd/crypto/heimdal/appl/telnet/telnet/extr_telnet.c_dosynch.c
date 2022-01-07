
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM ;
 int IAC ;
 int NETADD (int ) ;
 int netclear () ;
 int printoption (char*,int ,int ) ;
 int setneturg () ;

int
dosynch()
{
    netclear();
    NETADD(IAC);
    setneturg();
    NETADD(DM);
    printoption("SENT", IAC, DM);
    return 1;
}
