
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;


 int AF_INET ;
 int AF_INET6 ;
 int APPLY_MASK (struct in6_addr*,struct in6_addr*) ;
 int htonl (int) ;
 int n2mask (struct in6_addr*,int ) ;

__attribute__((used)) static void
nat64lsn_apply_mask(int af, void *prefix, uint16_t plen)
{
 struct in6_addr mask6, *p6;
 struct in_addr mask4, *p4;

 if (af == AF_INET) {
  p4 = (struct in_addr *)prefix;
  mask4.s_addr = htonl(~((1 << (32 - plen)) - 1));
  p4->s_addr &= mask4.s_addr;
 } else if (af == AF_INET6) {
  p6 = (struct in6_addr *)prefix;
  n2mask(&mask6, plen);
  APPLY_MASK(p6, &mask6);
 }
}
