
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AO ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 scalar_t__ autoflush ;
 int doflush () ;
 int printoption (char*,int ,int ) ;

void
xmitAO(void)
{
    NET2ADD(IAC, AO);
    printoption("SENT", IAC, AO);
    if (autoflush) {
 doflush();
    }
}
