
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recvbuf {int dummy; } ;
typedef int buf ;


 int ctl_flushpkt (int ) ;
 int ctl_putunqstr (char*,char*,int ) ;
 int generate_nonce (struct recvbuf*,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static void req_nonce(
 struct recvbuf * rbufp,
 int restrict_mask
 )
{
 char buf[64];

 generate_nonce(rbufp, buf, sizeof(buf));
 ctl_putunqstr("nonce", buf, strlen(buf));
 ctl_flushpkt(0);
}
