
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct udphdr {int uh_sum; void* uh_ulen; void* uh_dport; void* uh_sport; } ;
struct outdata {int seq; } ;


 scalar_t__ doipcksum ;
 scalar_t__ fixedPort ;
 void* htons (int) ;
 int ident ;
 int outip ;
 scalar_t__ outp ;
 int p_cksum (int ,int*,scalar_t__,scalar_t__) ;
 int port ;
 scalar_t__ protlen ;

void
udp_prep(struct outdata *outdata)
{
 struct udphdr *const outudp = (struct udphdr *) outp;

 outudp->uh_sport = htons(ident + (fixedPort ? outdata->seq : 0));
 outudp->uh_dport = htons(port + (fixedPort ? 0 : outdata->seq));
 outudp->uh_ulen = htons((u_short)protlen);
 outudp->uh_sum = 0;
 if (doipcksum) {
     u_short sum = p_cksum(outip, (u_short*)outudp, protlen, protlen);
     outudp->uh_sum = (sum) ? sum : 0xffff;
 }

 return;
}
