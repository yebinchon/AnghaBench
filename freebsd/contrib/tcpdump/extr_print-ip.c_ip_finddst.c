
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct ip {int const ip_dst; } ;
typedef int netdissect_options ;


 int IPOPT_EOL ;

 int IPOPT_NOP ;

 int IP_HL (struct ip const*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int UNALIGNED_MEMCPY (int *,int const*,int) ;

__attribute__((used)) static uint32_t
ip_finddst(netdissect_options *ndo,
           const struct ip *ip)
{
 int length;
 int len;
 const u_char *cp;
 uint32_t retval;

 cp = (const u_char *)(ip + 1);
 length = (IP_HL(ip) << 2) - sizeof(struct ip);

 for (; length > 0; cp += len, length -= len) {
  int tt;

  ND_TCHECK(*cp);
  tt = *cp;
  if (tt == IPOPT_EOL)
   break;
  else if (tt == IPOPT_NOP)
   len = 1;
  else {
   ND_TCHECK(cp[1]);
   len = cp[1];
   if (len < 2)
    break;
  }
  ND_TCHECK2(*cp, len);
  switch (tt) {

  case 128:
  case 129:
   if (len < 7)
    break;
   UNALIGNED_MEMCPY(&retval, cp + len - 4, 4);
   return retval;
  }
 }
trunc:
 UNALIGNED_MEMCPY(&retval, &ip->ip_dst, sizeof(uint32_t));
 return retval;
}
