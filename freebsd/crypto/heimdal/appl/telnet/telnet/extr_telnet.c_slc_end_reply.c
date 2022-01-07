
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IAC ;
 int NETROOM () ;
 int SE ;
 int netoring ;
 int printf (char*) ;
 int printsub (char,int *,int) ;
 int ring_supply_data (int *,int *,int) ;
 int * slc_reply ;
 int * slc_reply_eom ;
 int * slc_replyp ;

void
slc_end_reply()
{
    int len;


    if (&slc_replyp[2] > slc_reply_eom)
            return;
    *slc_replyp++ = IAC;
    *slc_replyp++ = SE;
    len = slc_replyp - slc_reply;
    if (len <= 6)
 return;
    if (NETROOM() > len) {
 ring_supply_data(&netoring, slc_reply, slc_replyp - slc_reply);
 printsub('>', &slc_reply[2], slc_replyp - slc_reply - 2);
    }
     else printf("slc_end_reply: not enough room\n");
}
