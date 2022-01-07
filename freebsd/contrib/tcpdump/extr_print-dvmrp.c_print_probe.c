
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (TYPE_1__*,int const*) ;

__attribute__((used)) static int
print_probe(netdissect_options *ndo,
            register const u_char *bp, register const u_char *ep,
            register u_int len)
{
 register uint32_t genid;

 ND_TCHECK2(bp[0], 4);
 if ((len < 4) || ((bp + 4) > ep)) {

  ND_PRINT((ndo, " [|}"));
  return (0);
 }
 genid = (bp[0] << 24) | (bp[1] << 16) | (bp[2] << 8) | bp[3];
 bp += 4;
 len -= 4;
 ND_PRINT((ndo, ndo->ndo_vflag > 1 ? "\n\t" : " "));
 ND_PRINT((ndo, "genid %u", genid));
 if (ndo->ndo_vflag < 2)
  return (0);

 while ((len > 0) && (bp < ep)) {
  ND_TCHECK2(bp[0], 4);
  ND_PRINT((ndo, "\n\tneighbor %s", ipaddr_string(ndo, bp)));
  bp += 4; len -= 4;
 }
 return (0);
trunc:
 return (-1);
}
