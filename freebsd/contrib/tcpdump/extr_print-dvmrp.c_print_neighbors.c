
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int ipaddr_string (int *,int const*) ;

__attribute__((used)) static int
print_neighbors(netdissect_options *ndo,
                register const u_char *bp, register const u_char *ep,
                register u_int len)
{
 const u_char *laddr;
 register u_char metric;
 register u_char thresh;
 register int ncount;

 while (len > 0 && bp < ep) {
  ND_TCHECK2(bp[0], 7);
  laddr = bp;
  bp += 4;
  metric = *bp++;
  thresh = *bp++;
  ncount = *bp++;
  len -= 7;
  while (--ncount >= 0) {
   ND_TCHECK2(bp[0], 4);
   ND_PRINT((ndo, " [%s ->", ipaddr_string(ndo, laddr)));
   ND_PRINT((ndo, " %s, (%d/%d)]",
       ipaddr_string(ndo, bp), metric, thresh));
   bp += 4;
   len -= 4;
  }
 }
 return (0);
trunc:
 return (-1);
}
