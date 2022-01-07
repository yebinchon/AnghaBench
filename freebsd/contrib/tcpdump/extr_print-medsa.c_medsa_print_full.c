
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct medsa_pkthdr {int dummy; } ;
typedef int netdissect_options ;


 int CFI (struct medsa_pkthdr const*) ;
 int CODE (struct medsa_pkthdr const*) ;
 int ND_DEFAULTPRINT (int const*,int ) ;
 int ND_PRINT (int *) ;
 int PRI (struct medsa_pkthdr const*) ;
 int SRC_DEV (struct medsa_pkthdr const*) ;
 int SRC_PORT (struct medsa_pkthdr const*) ;
 int SRC_TAG (struct medsa_pkthdr const*) ;
 int TAG (struct medsa_pkthdr const*) ;



 int TRUNK (struct medsa_pkthdr const*) ;
 int VID (struct medsa_pkthdr const*) ;
 int code_values ;
 int tag_values ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
medsa_print_full(netdissect_options *ndo,
   const struct medsa_pkthdr *medsa,
   u_int caplen)
{
 u_char tag = TAG(medsa);

 ND_PRINT((ndo, "%s",
    tok2str(tag_values, "Unknown (%u)", tag)));

 switch (tag) {
 case 128:
  ND_PRINT((ndo, ", %stagged", SRC_TAG(medsa) ? "" : "un"));
  ND_PRINT((ndo, ", dev.port:vlan %d.%d:%d",
     SRC_DEV(medsa), SRC_PORT(medsa), VID(medsa)));

  ND_PRINT((ndo, ", %s",
     tok2str(code_values, "Unknown (%u)", CODE(medsa))));
  if (CFI(medsa))
   ND_PRINT((ndo, ", CFI"));

  ND_PRINT((ndo, ", pri %d: ", PRI(medsa)));
  break;
 case 129:
  ND_PRINT((ndo, ", %stagged", SRC_TAG(medsa) ? "" : "un"));
  ND_PRINT((ndo, ", dev.port:vlan %d.%d:%d",
     SRC_DEV(medsa), SRC_PORT(medsa), VID(medsa)));

  if (CFI(medsa))
   ND_PRINT((ndo, ", CFI"));

  ND_PRINT((ndo, ", pri %d: ", PRI(medsa)));
  break;
 case 130:
  ND_PRINT((ndo, ", %stagged", SRC_TAG(medsa) ? "" : "un"));
  if (TRUNK(medsa))
   ND_PRINT((ndo, ", dev.trunk:vlan %d.%d:%d",
      SRC_DEV(medsa), SRC_PORT(medsa), VID(medsa)));
  else
   ND_PRINT((ndo, ", dev.port:vlan %d.%d:%d",
      SRC_DEV(medsa), SRC_PORT(medsa), VID(medsa)));

  if (CFI(medsa))
   ND_PRINT((ndo, ", CFI"));

  ND_PRINT((ndo, ", pri %d: ", PRI(medsa)));
  break;
 default:
  ND_DEFAULTPRINT((const u_char *)medsa, caplen);
  return;
 }
}
