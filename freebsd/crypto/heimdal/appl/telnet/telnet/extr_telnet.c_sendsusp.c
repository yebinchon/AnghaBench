
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int SUSP ;
 scalar_t__ autoflush ;
 scalar_t__ autosynch ;
 int doflush () ;
 int dosynch () ;
 int flushline ;
 int printoption (char*,int ,int ) ;

void
sendsusp(void)
{
    NET2ADD(IAC, SUSP);
    printoption("SENT", IAC, SUSP);
    flushline = 1;
    if (autoflush) {
 doflush();
    }
    if (autosynch) {
 dosynch();
    }
}
