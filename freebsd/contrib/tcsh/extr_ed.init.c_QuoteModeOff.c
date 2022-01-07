
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHTTY ;
 scalar_t__ Tty_quote_mode ;
 int edtty ;
 int errno ;
 int strerror (int ) ;
 int tty_setty (int ,int *) ;
 int xprintf (char*,int ) ;

void
QuoteModeOff(void)
{
    if (!Tty_quote_mode)
 return;
    Tty_quote_mode = 0;
    if (tty_setty(SHTTY, &edtty) == -1) {



 return;
    }
    return;
}
