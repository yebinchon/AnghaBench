
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* IAC ;
 int NETROOM () ;
 int PUTSHORT (unsigned char*,long) ;
 int SB ;
 int SE ;
 int TELOPT_NAWS ;
 scalar_t__ TerminalWindowSize (long*,long*) ;
 scalar_t__ my_state_is_wont (int ) ;
 int netoring ;
 int printsub (char,unsigned char*,int) ;
 int ring_supply_data (int *,unsigned char*,int) ;

void
sendnaws(void)
{
    long rows, cols;
    unsigned char tmp[16];
    unsigned char *cp;

    if (my_state_is_wont(TELOPT_NAWS))
 return;




    if (TerminalWindowSize(&rows, &cols) == 0) {
 return;
    }

    cp = tmp;

    *cp++ = IAC;
    *cp++ = SB;
    *cp++ = TELOPT_NAWS;
    { if ((*cp++ = ((cols)>>8)&0xff) == IAC) *cp++ = IAC; if ((*cp++ = ((cols))&0xff) == IAC) *cp++ = IAC; };
    { if ((*cp++ = ((rows)>>8)&0xff) == IAC) *cp++ = IAC; if ((*cp++ = ((rows))&0xff) == IAC) *cp++ = IAC; };
    *cp++ = IAC;
    *cp++ = SE;
    if (NETROOM() >= cp - tmp) {
 ring_supply_data(&netoring, tmp, cp-tmp);
 printsub('>', tmp+2, cp - tmp - 2);
    }
}
