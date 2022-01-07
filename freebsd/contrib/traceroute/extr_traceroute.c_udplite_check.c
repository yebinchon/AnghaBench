
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct udphdr {int uh_dport; int uh_sport; } ;


 scalar_t__ fixedPort ;
 scalar_t__ ident ;
 scalar_t__ ntohs (int ) ;
 scalar_t__ port ;

int
udplite_check(const u_char *data, int seq)
{
 struct udphdr *const udp = (struct udphdr *) data;

 return (ntohs(udp->uh_sport) == ident + (fixedPort ? seq : 0) &&
     ntohs(udp->uh_dport) == port + (fixedPort ? 0 : seq));
}
