
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct in_addr {int s_addr; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 char* inet_ntoa (struct in_addr) ;

__attribute__((used)) static void
print_ip_address(FILE *fp, u_int32_t ip)
{
 struct in_addr ipaddr;

 ipaddr.s_addr = ip;
 fprintf(fp, "%s", inet_ntoa(ipaddr));
}
