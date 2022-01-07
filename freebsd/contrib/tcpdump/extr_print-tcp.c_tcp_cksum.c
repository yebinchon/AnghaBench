
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct tcphdr {int dummy; } ;
struct ip {int dummy; } ;
typedef int netdissect_options ;


 int IPPROTO_TCP ;
 int nextproto4_cksum (int *,struct ip const*,int const*,int ,int ,int ) ;

__attribute__((used)) static int
tcp_cksum(netdissect_options *ndo,
          register const struct ip *ip,
          register const struct tcphdr *tp,
          register u_int len)
{
 return nextproto4_cksum(ndo, ip, (const uint8_t *)tp, len, len,
    IPPROTO_TCP);
}
