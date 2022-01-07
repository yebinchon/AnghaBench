
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;
struct in6_addr {int s_addr; } ;
typedef int ipv6 ;
typedef int in_addr_t ;
typedef int FILE ;


 int AF_INET ;
 int AF_INET6 ;


 int INET6_ADDRSTRLEN ;
 int bcopy (int*,struct in_addr*,int) ;
 int fprintf (int *,char*,...) ;
 char* inet_ntop (int ,struct in_addr*,char*,int) ;

__attribute__((used)) static void
print_ip_ex_address(FILE *fp, u_int32_t type, u_int32_t *ipaddr)
{
 struct in_addr ipv4;
 struct in6_addr ipv6;
 char dst[INET6_ADDRSTRLEN];

 switch (type) {
 case 129:
  ipv4.s_addr = (in_addr_t)(ipaddr[0]);
  fprintf(fp, "%s", inet_ntop(AF_INET, &ipv4, dst,
      INET6_ADDRSTRLEN));
  break;

 case 128:
  bcopy(ipaddr, &ipv6, sizeof(ipv6));
  fprintf(fp, "%s", inet_ntop(AF_INET6, &ipv6, dst,
      INET6_ADDRSTRLEN));
  break;

 default:
  fprintf(fp, "invalid");
 }
}
