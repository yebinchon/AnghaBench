
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AYT ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int printoption (char*,int ,int ) ;

void
sendayt(void)
{
    NET2ADD(IAC, AYT);
    printoption("SENT", IAC, AYT);
}
