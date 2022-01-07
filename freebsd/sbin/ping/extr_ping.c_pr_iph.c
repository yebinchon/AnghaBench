
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int u_char ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct ip {int ip_hl; int ip_v; int ip_tos; int ip_ttl; int ip_p; TYPE_2__ ip_dst; TYPE_1__ ip_src; int ip_sum; int ip_off; int ip_id; int ip_len; } ;
struct in_addr {int dummy; } ;


 char* inet_ntoa (struct in_addr) ;
 int memcpy (struct in_addr*,int *,int) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
pr_iph(struct ip *ip)
{
 struct in_addr ina;
 u_char *cp;
 int hlen;

 hlen = ip->ip_hl << 2;
 cp = (u_char *)ip + 20;

 (void)printf("Vr HL TOS  Len   ID Flg  off TTL Pro  cks      Src      Dst\n");
 (void)printf(" %1x  %1x  %02x %04x %04x",
     ip->ip_v, ip->ip_hl, ip->ip_tos, ntohs(ip->ip_len),
     ntohs(ip->ip_id));
 (void)printf("   %1lx %04lx",
     (u_long) (ntohl(ip->ip_off) & 0xe000) >> 13,
     (u_long) ntohl(ip->ip_off) & 0x1fff);
 (void)printf("  %02x  %02x %04x", ip->ip_ttl, ip->ip_p,
           ntohs(ip->ip_sum));
 memcpy(&ina, &ip->ip_src.s_addr, sizeof ina);
 (void)printf(" %s ", inet_ntoa(ina));
 memcpy(&ina, &ip->ip_dst.s_addr, sizeof ina);
 (void)printf(" %s ", inet_ntoa(ina));

 while (hlen-- > 20) {
  (void)printf("%02x", *cp++);
 }
 (void)putchar('\n');
}
