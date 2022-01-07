
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip {int ip_p; } ;


 int pr_iph (struct ip*) ;
 int printf (char*,int const,int const) ;

__attribute__((used)) static void
pr_retip(struct ip *ip, const u_char *cp)
{
 pr_iph(ip);

 if (ip->ip_p == 6)
  (void)printf("TCP: from port %u, to port %u (decimal)\n",
      (*cp * 256 + *(cp + 1)), (*(cp + 2) * 256 + *(cp + 3)));
 else if (ip->ip_p == 17)
  (void)printf("UDP: from port %u, to port %u (decimal)\n",
   (*cp * 256 + *(cp + 1)), (*(cp + 2) * 256 + *(cp + 3)));
}
