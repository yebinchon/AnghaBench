
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int netdissect_options ;


 int EXTRACT_LE_16BITS (char const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (char const,int) ;
 int RI_COST (int) ;
 int RI_HOPS (int) ;

__attribute__((used)) static int
print_l2_routes(netdissect_options *ndo,
                const char *rp, u_int len)
{
 int count;
 int area;
 int info;


 while (len > (3 * sizeof(short))) {
     ND_TCHECK2(*rp, 3 * sizeof(short));
     count = EXTRACT_LE_16BITS(rp);
     if (count > 1024)
  return (1);
     rp += sizeof(short);
     len -= sizeof(short);
     area = EXTRACT_LE_16BITS(rp);
     rp += sizeof(short);
     len -= sizeof(short);
     info = EXTRACT_LE_16BITS(rp);
     rp += sizeof(short);
     len -= sizeof(short);
     ND_PRINT((ndo, "{areas %d-%d cost %d hops %d} ", area, area + count,
       RI_COST(info), RI_HOPS(info)));
 }
 return (1);

trunc:
 return (0);
}
