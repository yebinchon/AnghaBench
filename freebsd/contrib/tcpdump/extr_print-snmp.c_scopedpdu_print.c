
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; int asnlen; TYPE_1__ data; } ;
typedef int netdissect_options ;


 scalar_t__ BE_SEQ ;
 scalar_t__ BE_STR ;
 int ND_PRINT (int *) ;
 int asn1_parse (int *,int const*,int,struct be*) ;
 int asn1_print (int *,struct be*) ;
 int asn1_print_octets (int *,struct be*) ;
 int asn1_print_string (int *,struct be*) ;
 int pdu_print (int *,int const*,int,int) ;

__attribute__((used)) static void
scopedpdu_print(netdissect_options *ndo,
                const u_char *np, u_int length, int version)
{
 struct be elem;
 int count = 0;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_SEQ) {
  ND_PRINT((ndo, "[!scoped PDU]"));
  asn1_print(ndo, &elem);
  return;
 }
 length = elem.asnlen;
 np = (const u_char *)elem.data.raw;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[contextEngineID!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
 np += count;

 ND_PRINT((ndo, "E="));
 if (asn1_print_octets(ndo, &elem) == -1)
  return;
 ND_PRINT((ndo, " "));


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_STR) {
  ND_PRINT((ndo, "[contextName!=STR]"));
  asn1_print(ndo, &elem);
  return;
 }
 length -= count;
 np += count;

 ND_PRINT((ndo, "C="));
 if (asn1_print_string(ndo, &elem) == -1)
  return;
 ND_PRINT((ndo, " "));

 pdu_print(ndo, np, length, version);
}
