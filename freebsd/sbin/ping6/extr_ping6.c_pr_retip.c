
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip6_rthdr {int ip6r_nxt; int ip6r_len; } ;
struct ip6_hdr {int ip6_nxt; } ;
struct ip6_hbh {int ip6h_nxt; int ip6h_len; } ;
struct ip6_frag {int ip6f_nxt; } ;
struct ip6_dest {int ip6d_nxt; int ip6d_len; } ;
struct ah {int ah_nxt; int ah_len; } ;
typedef int ah ;
 int memcpy (struct ah*,int*,int) ;
 int pr_iph (struct ip6_hdr*) ;
 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void
pr_retip(struct ip6_hdr *ip6, u_char *end)
{
 u_char *cp = (u_char *)ip6, nh;
 int hlen;

 if ((size_t)(end - (u_char *)ip6) < sizeof(*ip6)) {
  printf("IP6");
  goto trunc;
 }
 pr_iph(ip6);
 hlen = sizeof(*ip6);

 nh = ip6->ip6_nxt;
 cp += hlen;
 while (end - cp >= 8) {
  struct ah ah;

  switch (nh) {
  case 132:
   printf("HBH ");
   hlen = (((struct ip6_hbh *)cp)->ip6h_len+1) << 3;
   nh = ((struct ip6_hbh *)cp)->ip6h_nxt;
   break;
  case 135:
   printf("DSTOPT ");
   hlen = (((struct ip6_dest *)cp)->ip6d_len+1) << 3;
   nh = ((struct ip6_dest *)cp)->ip6d_nxt;
   break;
  case 133:
   printf("FRAG ");
   hlen = sizeof(struct ip6_frag);
   nh = ((struct ip6_frag *)cp)->ip6f_nxt;
   break;
  case 130:
   printf("RTHDR ");
   hlen = (((struct ip6_rthdr *)cp)->ip6r_len+1) << 3;
   nh = ((struct ip6_rthdr *)cp)->ip6r_nxt;
   break;
  case 131:
   printf("ICMP6: type = %d, code = %d\n",
       *cp, *(cp + 1));
   return;
  case 134:
   printf("ESP\n");
   return;
  case 129:
   printf("TCP: from port %u, to port %u (decimal)\n",
       (*cp * 256 + *(cp + 1)),
       (*(cp + 2) * 256 + *(cp + 3)));
   return;
  case 128:
   printf("UDP: from port %u, to port %u (decimal)\n",
       (*cp * 256 + *(cp + 1)),
       (*(cp + 2) * 256 + *(cp + 3)));
   return;
  default:
   printf("Unknown Header(%d)\n", nh);
   return;
  }

  if ((cp += hlen) >= end)
   goto trunc;
 }
 if (end - cp < 8)
  goto trunc;

 putchar('\n');
 return;

  trunc:
 printf("...\n");
 return;
}
