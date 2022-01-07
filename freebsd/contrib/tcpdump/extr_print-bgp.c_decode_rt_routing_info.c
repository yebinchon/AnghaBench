
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
typedef int route_target ;
typedef int netdissect_options ;
typedef int astostr ;
typedef int asbuf ;


 int EXTRACT_32BITS (int const*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_32BITS (int const*) ;
 int as_printf (int *,char*,int,int ) ;
 char* bgp_vpn_rd_print (int *,int*) ;
 int memcpy (int **,int const*,int) ;
 int memset (int **,int ,int) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int
decode_rt_routing_info(netdissect_options *ndo,
                       const u_char *pptr, char *buf, u_int buflen)
{
 uint8_t route_target[8];
 u_int plen;
 char asbuf[sizeof(astostr)];


 ND_TCHECK(pptr[0]);
 plen = pptr[0];





 if (0 == plen) {

  snprintf(buf, buflen, "default route target");
  return 1;
 }

 if (32 > plen)
  return -1;


 ND_TCHECK_32BITS(pptr + 1);
 as_printf(ndo, asbuf, sizeof(asbuf), EXTRACT_32BITS(pptr + 1));

        plen-=32;

 if (64 < plen)
  return -1;





 memset(&route_target, 0, sizeof(route_target));
 ND_TCHECK2(pptr[5], (plen + 7) / 8);
 memcpy(&route_target, &pptr[5], (plen + 7) / 8);

 if (plen % 8) {
  ((u_char *)&route_target)[(plen + 7) / 8 - 1] &=
   ((0xff00 >> (plen % 8)) & 0xff);
 }
 snprintf(buf, buflen, "origin AS: %s, route target %s",
     asbuf,
     bgp_vpn_rd_print(ndo, (u_char *)&route_target));

 return 5 + (plen + 7) / 8;

trunc:
 return -2;
}
