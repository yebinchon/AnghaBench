
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_2__ {int integer; } ;
struct be {scalar_t__ type; TYPE_1__ data; } ;
typedef int netdissect_options ;


 scalar_t__ BE_INETADDR ;
 scalar_t__ BE_INT ;
 scalar_t__ BE_OID ;
 scalar_t__ BE_UNS ;
 int DECODE_GenericTrap (int) ;
 int GT_ENTERPRISE ;
 int ND_PRINT (int *) ;
 int TRAP ;
 int asn1_parse (int *,int const*,int,struct be*) ;
 scalar_t__ asn1_print (int *,struct be*) ;
 int varbind_print (int *,int ,int const*,int) ;

__attribute__((used)) static void
trappdu_print(netdissect_options *ndo,
              const u_char *np, u_int length)
{
 struct be elem;
 int count = 0, generic;

 ND_PRINT((ndo, " "));


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_OID) {
  ND_PRINT((ndo, "[enterprise!=OID]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (asn1_print(ndo, &elem) < 0)
  return;
 length -= count;
 np += count;

 ND_PRINT((ndo, " "));


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_INETADDR) {
  ND_PRINT((ndo, "[agent-addr!=INETADDR]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (asn1_print(ndo, &elem) < 0)
  return;
 length -= count;
 np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_INT) {
  ND_PRINT((ndo, "[generic-trap!=INT]"));
  asn1_print(ndo, &elem);
  return;
 }
 generic = elem.data.integer;
 {
  char buf[20];
  ND_PRINT((ndo, " %s", DECODE_GenericTrap(generic)));
 }
 length -= count;
 np += count;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_INT) {
  ND_PRINT((ndo, "[specific-trap!=INT]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (generic != GT_ENTERPRISE) {
  if (elem.data.integer != 0)
   ND_PRINT((ndo, "[specific-trap(%d)!=0]", elem.data.integer));
 } else
  ND_PRINT((ndo, " s=%d", elem.data.integer));
 length -= count;
 np += count;

 ND_PRINT((ndo, " "));


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_UNS) {
  ND_PRINT((ndo, "[time-stamp!=TIMETICKS]"));
  asn1_print(ndo, &elem);
  return;
 }
 if (asn1_print(ndo, &elem) < 0)
  return;
 length -= count;
 np += count;

 varbind_print(ndo, TRAP, np, length);
 return;
}
