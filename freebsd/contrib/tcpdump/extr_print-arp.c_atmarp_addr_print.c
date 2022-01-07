
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int LINKADDR_ATM ;
 int ND_PRINT (int *) ;
 int linkaddr_string (int *,int const*,int ,scalar_t__) ;

__attribute__((used)) static void
atmarp_addr_print(netdissect_options *ndo,
    const u_char *ha, u_int ha_len, const u_char *srca,
    u_int srca_len)
{
 if (ha_len == 0)
  ND_PRINT((ndo, "<No address>"));
 else {
  ND_PRINT((ndo, "%s", linkaddr_string(ndo, ha, LINKADDR_ATM, ha_len)));
  if (srca_len != 0)
   ND_PRINT((ndo, ",%s",
      linkaddr_string(ndo, srca, LINKADDR_ATM, srca_len)));
 }
}
