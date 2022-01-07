
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EC ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int printoption (char*,int ,int ) ;

void
xmitEC(void)
{
    NET2ADD(IAC, EC);
    printoption("SENT", IAC, EC);
}
