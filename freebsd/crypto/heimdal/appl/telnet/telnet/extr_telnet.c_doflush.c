
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DO ;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int NETADD (int ) ;
 int TELOPT_TM ;
 int flushline ;
 int flushout ;
 int printoption (char*,int ,int ) ;
 int ttyflush (int) ;

__attribute__((used)) static void
doflush()
{
    NET2ADD(IAC, DO);
    NETADD(TELOPT_TM);
    flushline = 1;
    flushout = 1;
    ttyflush(1);

    printoption("SENT", DO, TELOPT_TM);
}
