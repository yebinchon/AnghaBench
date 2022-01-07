
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct outdata {int seq; } ;
struct icmp {int icmp_cksum; void* icmp_seq; void* icmp_id; int icmp_type; } ;


 int ICMP_ECHO ;
 void* htons (int ) ;
 int ident ;
 int in_cksum (int *,int ) ;
 scalar_t__ outp ;
 int protlen ;

void
icmp_prep(struct outdata *outdata)
{
 struct icmp *const icmpheader = (struct icmp *) outp;

 icmpheader->icmp_type = ICMP_ECHO;
 icmpheader->icmp_id = htons(ident);
 icmpheader->icmp_seq = htons(outdata->seq);
 icmpheader->icmp_cksum = 0;
 icmpheader->icmp_cksum = in_cksum((u_short *)icmpheader, protlen);
 if (icmpheader->icmp_cksum == 0)
  icmpheader->icmp_cksum = 0xffff;
}
