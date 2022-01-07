
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr_in {int sin_addr; } ;
struct ip {int ip_hl; int ip_dst; } ;
typedef int addr ;


 int AF_INET ;
 int INET_ADDRSTRLEN ;
 int Printf (char*,...) ;
 int as_lookup (int ,char*,int ) ;
 scalar_t__ as_path ;
 int asn ;
 char* inet_ntoa (int ) ;
 int inetname (int ) ;
 scalar_t__ nflag ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ verbose ;

void
print(register u_char *buf, register int cc, register struct sockaddr_in *from)
{
 register struct ip *ip;
 register int hlen;
 char addr[INET_ADDRSTRLEN];

 ip = (struct ip *) buf;
 hlen = ip->ip_hl << 2;
 cc -= hlen;

 strlcpy(addr, inet_ntoa(from->sin_addr), sizeof(addr));

 if (as_path)
  Printf(" [AS%u]", as_lookup(asn, addr, AF_INET));

 if (nflag)
  Printf(" %s", addr);
 else
  Printf(" %s (%s)", inetname(from->sin_addr), addr);

 if (verbose)
  Printf(" %d bytes to %s", cc, inet_ntoa (ip->ip_dst));
}
