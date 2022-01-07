
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct tcphdr {int th_sport; int th_dport; int th_seq; int th_off; scalar_t__ th_sum; int th_flags; scalar_t__ th_ack; } ;
struct outdata {scalar_t__ seq; } ;


 int TH_SYN ;
 scalar_t__ doipcksum ;
 scalar_t__ fixedPort ;
 void* htons (scalar_t__) ;
 scalar_t__ ident ;
 int outip ;
 scalar_t__ outp ;
 scalar_t__ p_cksum (int ,int *,int ,int ) ;
 scalar_t__ port ;
 int protlen ;

void
tcp_prep(struct outdata *outdata)
{
 struct tcphdr *const tcp = (struct tcphdr *) outp;

 tcp->th_sport = htons(ident);
 tcp->th_dport = htons(port + (fixedPort ? 0 : outdata->seq));
 tcp->th_seq = (tcp->th_sport << 16) | tcp->th_dport;
 tcp->th_ack = 0;
 tcp->th_off = 5;
 tcp->th_flags = TH_SYN;
 tcp->th_sum = 0;

 if (doipcksum)
     tcp->th_sum = p_cksum(outip, (u_short*)tcp, protlen, protlen);
}
