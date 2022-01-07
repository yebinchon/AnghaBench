
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct icmp {scalar_t__ icmp_id; scalar_t__ icmp_seq; } ;


 scalar_t__ htons (int) ;
 int ident ;

int
icmp_check(const u_char *data, int seq)
{
 struct icmp *const icmpheader = (struct icmp *) data;

 return (icmpheader->icmp_id == htons(ident)
     && icmpheader->icmp_seq == htons(seq));
}
