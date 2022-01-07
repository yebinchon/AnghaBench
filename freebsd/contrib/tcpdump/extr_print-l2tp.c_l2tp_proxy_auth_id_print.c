
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int L2TP_PROXY_AUTH_ID_MASK ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
l2tp_proxy_auth_id_print(netdissect_options *ndo, const u_char *dat, u_int length)
{
 const uint16_t *ptr = (const uint16_t *)dat;

 if (length < 2) {
  ND_PRINT((ndo, "AVP too short"));
  return;
 }
 ND_PRINT((ndo, "%u", EXTRACT_16BITS(ptr) & L2TP_PROXY_AUTH_ID_MASK));
}
