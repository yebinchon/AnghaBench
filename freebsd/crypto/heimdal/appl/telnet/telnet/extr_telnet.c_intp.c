
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int IP ;
 int NET2ADD (int ,int ) ;
 scalar_t__ autoflush ;
 scalar_t__ autosynch ;
 int doflush () ;
 int dosynch () ;
 int flushline ;
 int printoption (char*,int ,int ) ;

void
intp(void)
{
    NET2ADD(IAC, IP);
    printoption("SENT", IAC, IP);
    flushline = 1;
    if (autoflush) {
 doflush();
    }
    if (autosynch) {
 dosynch();
    }
}
