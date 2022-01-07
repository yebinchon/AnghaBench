
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BREAK ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 scalar_t__ autoflush ;
 scalar_t__ autosynch ;
 int doflush () ;
 int dosynch () ;
 int flushline ;
 int printoption (char*,int ,int ) ;

void
sendbrk(void)
{
    NET2ADD(IAC, BREAK);
    printoption("SENT", IAC, BREAK);
    flushline = 1;
    if (autoflush) {
 doflush();
    }
    if (autosynch) {
 dosynch();
    }
}
