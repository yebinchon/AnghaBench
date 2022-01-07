
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct in_addr {int dummy; } ;
typedef int netdissect_options ;
typedef int addr ;


 int EXTRACT_24BITS (int const*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 char* bgp_vpn_rd_print (int *,int const*) ;
 char* ipaddr_string (int *,struct in_addr*) ;
 int memcpy (struct in_addr*,int const*,int) ;
 int memset (struct in_addr*,int ,int) ;
 int snprintf (char*,int,char*,char*,char*,int,int,char*) ;

__attribute__((used)) static int
decode_labeled_vpn_prefix4(netdissect_options *ndo,
                           const u_char *pptr, char *buf, u_int buflen)
{
 struct in_addr addr;
 u_int plen;

 ND_TCHECK(pptr[0]);
 plen = pptr[0];

 if ((24+64) > plen)
  return -1;

        plen-=(24+64);

 if (32 < plen)
  return -1;

 memset(&addr, 0, sizeof(addr));
 ND_TCHECK2(pptr[12], (plen + 7) / 8);
 memcpy(&addr, &pptr[12], (plen + 7) / 8);
 if (plen % 8) {
  ((u_char *)&addr)[(plen + 7) / 8 - 1] &=
   ((0xff00 >> (plen % 8)) & 0xff);
 }

 snprintf(buf, buflen, "RD: %s, %s/%d, label:%u %s",
                 bgp_vpn_rd_print(ndo, pptr+4),
                 ipaddr_string(ndo, &addr),
                 plen,
                 EXTRACT_24BITS(pptr+1)>>4,
                 ((pptr[3]&1)==0) ? "(BOGUS: Bottom of Stack NOT set!)" : "(bottom)" );

 return 12 + (plen + 7) / 8;

trunc:
 return -2;
}
