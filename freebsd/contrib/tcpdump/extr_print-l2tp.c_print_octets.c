
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_octets(netdissect_options *ndo, const u_char *dat, u_int length)
{
 u_int i;
 for (i=0; i<length; i++) {
  ND_PRINT((ndo, "%02x", *dat++));
 }
}
