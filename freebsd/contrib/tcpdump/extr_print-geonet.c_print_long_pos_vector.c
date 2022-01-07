
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int GEONET_ADDR_LEN ;
 int ND_PRINT (int *) ;
 int ND_TTEST2 (int const,int) ;
 int linkaddr_string (int *,int const*,int ,int) ;

__attribute__((used)) static int
print_long_pos_vector(netdissect_options *ndo,
                      const u_char *bp)
{
 uint32_t lat, lon;

 if (!ND_TTEST2(*bp, GEONET_ADDR_LEN))
  return (-1);
 ND_PRINT((ndo, "GN_ADDR:%s ", linkaddr_string (ndo, bp, 0, GEONET_ADDR_LEN)));

 if (!ND_TTEST2(*(bp+12), 8))
  return (-1);
 lat = EXTRACT_32BITS(bp+12);
 ND_PRINT((ndo, "lat:%d ", lat));
 lon = EXTRACT_32BITS(bp+16);
 ND_PRINT((ndo, "lon:%d", lon));
 return (0);
}
