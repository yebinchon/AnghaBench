
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pf_addr {int dummy; } ;
typedef int sa_family_t ;
typedef int netdissect_options ;
typedef int buf ;


 int ND_PRINT (int *) ;
 int * inet_ntop (int ,struct pf_addr*,char*,int) ;
 int ntohs (scalar_t__) ;

__attribute__((used)) static void
print_host(netdissect_options *ndo, struct pf_addr *addr, uint16_t port,
    sa_family_t af, const char *proto)
{
 char buf[48];

 if (inet_ntop(af, addr, buf, sizeof(buf)) == ((void*)0))
  ND_PRINT((ndo, "?"));
 else
  ND_PRINT((ndo, "%s", buf));

 if (port)
  ND_PRINT((ndo, ".%hu", ntohs(port)));
}
