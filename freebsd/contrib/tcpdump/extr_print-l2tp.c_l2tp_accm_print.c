
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
l2tp_accm_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const uint16_t *ptr = (const uint16_t *)dat;
 uint16_t val_h, val_l;

 if (length < 2) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 ptr++;
 length -= 2;

 if (length < 4) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 val_h = EXTRACT_16BITS(ptr); ptr++; length -= 2;
 val_l = EXTRACT_16BITS(ptr); ptr++; length -= 2;
 ND_PRINT((ndo, "send=%08x ", (val_h<<16) + val_l));

 if (length < 4) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 val_h = EXTRACT_16BITS(ptr); ptr++;
 val_l = EXTRACT_16BITS(ptr); ptr++;
 ND_PRINT((ndo, "recv=%08x ", (val_h<<16) + val_l));
}
