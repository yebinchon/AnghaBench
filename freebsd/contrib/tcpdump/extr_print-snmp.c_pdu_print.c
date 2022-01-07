
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_9__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; int id; TYPE_1__ data; } ;
struct TYPE_10__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_2__ netdissect_options ;


 scalar_t__ BE_PDU ;





 int ND_PRINT (TYPE_2__*) ;


 int SNMP_VERSION_1 ;
 int SNMP_VERSION_2 ;


 int asn1_parse (TYPE_2__*,int const*,scalar_t__,struct be*) ;
 scalar_t__ asn1_print (TYPE_2__*,struct be*) ;
 int snmppdu_print (TYPE_2__*,int,int const*,scalar_t__) ;
 int trappdu_print (TYPE_2__*,int const*,scalar_t__) ;

__attribute__((used)) static void
pdu_print(netdissect_options *ndo,
          const u_char *np, u_int length, int version)
{
 struct be pdu;
 int count = 0;


 if ((count = asn1_parse(ndo, np, length, &pdu)) < 0)
  return;
 if (pdu.type != BE_PDU) {
  ND_PRINT((ndo, "[no PDU]"));
  return;
 }
 if ((u_int)count < length)
  ND_PRINT((ndo, "[%d extra after PDU]", length - count));
 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, "{ "));
 }
 if (asn1_print(ndo, &pdu) < 0)
  return;
 ND_PRINT((ndo, " "));

 length = pdu.asnlen;
 np = (const u_char *)pdu.data.raw;

 if (version == SNMP_VERSION_1 &&
     (pdu.id == 136 || pdu.id == 132 ||
      pdu.id == 128 || pdu.id == 131)) {
         ND_PRINT((ndo, "[v2 PDU in v1 message]"));
  return;
 }

 if (version == SNMP_VERSION_2 && pdu.id == 129) {
  ND_PRINT((ndo, "[v1 PDU in v2 message]"));
  return;
 }

 switch (pdu.id) {
 case 129:
  trappdu_print(ndo, np, length);
  break;
 case 134:
 case 135:
 case 133:
 case 130:
 case 136:
 case 132:
 case 128:
 case 131:
  snmppdu_print(ndo, pdu.id, np, length);
  break;
 }

 if (ndo->ndo_vflag) {
  ND_PRINT((ndo, " } "));
 }
}
