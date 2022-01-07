
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* IAC ;
 int NETROOM () ;
 int SB ;
 int SE ;
 int TELOPT_STATUS ;
 int TELQUAL_SEND ;
 scalar_t__ my_want_state_is_dont (int ) ;
 int netoring ;
 int printf (char*) ;
 int printsub (char,unsigned char*,int) ;
 int ring_supply_data (int *,unsigned char*,int) ;
 int want_status_response ;

int
get_status()
{
    unsigned char tmp[16];
    unsigned char *cp;

    if (my_want_state_is_dont(TELOPT_STATUS)) {
 printf("Remote side does not support STATUS option\n");
 return 0;
    }
    cp = tmp;

    *cp++ = IAC;
    *cp++ = SB;
    *cp++ = TELOPT_STATUS;
    *cp++ = TELQUAL_SEND;
    *cp++ = IAC;
    *cp++ = SE;
    if (NETROOM() >= cp - tmp) {
 ring_supply_data(&netoring, tmp, cp-tmp);
 printsub('>', tmp+2, cp - tmp - 2);
    }
    ++want_status_response;
    return 1;
}
