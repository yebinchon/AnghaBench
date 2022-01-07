
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int NET2ADD (int ,int ) ;
 int printoption (char*,int ,int ) ;
 int xEOF ;

void
sendeof(void)
{
    NET2ADD(IAC, xEOF);
    printoption("SENT", IAC, xEOF);
}
