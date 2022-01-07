
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
l2tp_proto_ver_print(netdissect_options *ndo, const uint16_t *dat, u_int length)
{
 if (length < 2) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 ND_PRINT((ndo, "%u.%u", (EXTRACT_16BITS(dat) >> 8),
     (EXTRACT_16BITS(dat) & 0xff)));
}
