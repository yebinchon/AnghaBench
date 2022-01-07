
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static int
cdp_print_prefixes(netdissect_options *ndo,
     const u_char * p, int l)
{
 if (l % 5)
  goto trunc;

 ND_PRINT((ndo, " IPv4 Prefixes (%d):", l / 5));

 while (l > 0) {
  ND_PRINT((ndo, " %u.%u.%u.%u/%u", p[0], p[1], p[2], p[3], p[4]));
  l -= 5;
  p += 5;
 }

 return 0;

trunc:
 return -1;
}
