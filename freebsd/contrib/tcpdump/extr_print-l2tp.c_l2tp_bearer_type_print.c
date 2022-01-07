
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int L2TP_BEARER_TYPE_ANALOG_MASK ;
 int L2TP_BEARER_TYPE_DIGITAL_MASK ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
l2tp_bearer_type_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const uint32_t *ptr = (const uint32_t *)dat;

 if (length < 4) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 if (EXTRACT_32BITS(ptr) & L2TP_BEARER_TYPE_ANALOG_MASK) {
  ND_PRINT((ndo, "A"));
 }
 if (EXTRACT_32BITS(ptr) & L2TP_BEARER_TYPE_DIGITAL_MASK) {
  ND_PRINT((ndo, "D"));
 }
}
