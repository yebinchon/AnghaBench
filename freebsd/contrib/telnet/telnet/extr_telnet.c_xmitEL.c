
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int printoption (char*,int ,int ) ;

void
xmitEL(void)
{
    NET2ADD(IAC, EL);
    printoption("SENT", IAC, EL);
}
