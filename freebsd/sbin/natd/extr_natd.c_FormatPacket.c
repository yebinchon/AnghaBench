
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int uh_dport; int uh_sport; } ;
struct tcphdr {int th_dport; int th_sport; } ;
struct ip {int ip_p; int ip_hl; int ip_dst; int ip_src; } ;
struct icmp {int icmp_type; int icmp_code; } ;





 int inet_ntoa (int ) ;
 int ntohs (int ) ;
 int sprintf (char*,char*,...) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static char* FormatPacket (struct ip* ip)
{
 static char buf[256];
 struct tcphdr* tcphdr;
 struct udphdr* udphdr;
 struct icmp* icmphdr;
 char src[20];
 char dst[20];

 strcpy (src, inet_ntoa (ip->ip_src));
 strcpy (dst, inet_ntoa (ip->ip_dst));

 switch (ip->ip_p) {
 case 129:
  tcphdr = (struct tcphdr*) ((char*) ip + (ip->ip_hl << 2));
  sprintf (buf, "[TCP] %s:%d -> %s:%d",
         src,
         ntohs (tcphdr->th_sport),
         dst,
         ntohs (tcphdr->th_dport));
  break;

 case 128:
  udphdr = (struct udphdr*) ((char*) ip + (ip->ip_hl << 2));
  sprintf (buf, "[UDP] %s:%d -> %s:%d",
         src,
         ntohs (udphdr->uh_sport),
         dst,
         ntohs (udphdr->uh_dport));
  break;

 case 130:
  icmphdr = (struct icmp*) ((char*) ip + (ip->ip_hl << 2));
  sprintf (buf, "[ICMP] %s -> %s %u(%u)",
         src,
         dst,
         icmphdr->icmp_type,
         icmphdr->icmp_code);
  break;

 default:
  sprintf (buf, "[%d] %s -> %s ", ip->ip_p, src, dst);
  break;
 }

 return buf;
}
