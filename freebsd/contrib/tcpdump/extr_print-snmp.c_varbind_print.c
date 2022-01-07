
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_2__ {scalar_t__ raw; } ;
struct be {scalar_t__ type; scalar_t__ asnlen; TYPE_1__ data; } ;
typedef int netdissect_options ;
typedef int SmiNode ;


 scalar_t__ BE_NULL ;
 scalar_t__ BE_OID ;
 scalar_t__ BE_SEQ ;
 int GETBULKREQ ;
 int GETNEXTREQ ;
 int GETREQ ;
 int ND_PRINT (int *) ;
 int asn1_parse (int *,int const*,scalar_t__,struct be*) ;
 int asn1_print (int *,struct be*) ;
 int smi_print_value (int *,int *,int ,struct be*) ;
 int * smi_print_variable (int *,struct be*,int*) ;

__attribute__((used)) static void
varbind_print(netdissect_options *ndo,
              u_short pduid, const u_char *np, u_int length)
{
 struct be elem;
 int count = 0, ind;



 int status;


 if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
  return;
 if (elem.type != BE_SEQ) {
  ND_PRINT((ndo, "[!SEQ of varbind]"));
  asn1_print(ndo, &elem);
  return;
 }
 if ((u_int)count < length)
  ND_PRINT((ndo, "[%d extra after SEQ of varbind]", length - count));

 length = elem.asnlen;
 np = (const u_char *)elem.data.raw;

 for (ind = 1; length > 0; ind++) {
  const u_char *vbend;
  u_int vblength;

  ND_PRINT((ndo, " "));


  if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
   return;
  if (elem.type != BE_SEQ) {
   ND_PRINT((ndo, "[!varbind]"));
   asn1_print(ndo, &elem);
   return;
  }
  vbend = np + count;
  vblength = length - count;

  length = elem.asnlen;
  np = (const u_char *)elem.data.raw;


  if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
   return;
  if (elem.type != BE_OID) {
   ND_PRINT((ndo, "[objName!=OID]"));
   asn1_print(ndo, &elem);
   return;
  }



  status = asn1_print(ndo, &elem);

  if (status < 0)
   return;
  length -= count;
  np += count;

  if (pduid != GETREQ && pduid != GETNEXTREQ
      && pduid != GETBULKREQ)
   ND_PRINT((ndo, "="));


  if ((count = asn1_parse(ndo, np, length, &elem)) < 0)
   return;
  if (pduid == GETREQ || pduid == GETNEXTREQ
      || pduid == GETBULKREQ) {
   if (elem.type != BE_NULL) {
    ND_PRINT((ndo, "[objVal!=NULL]"));
    if (asn1_print(ndo, &elem) < 0)
     return;
   }
  } else {
          if (elem.type != BE_NULL) {



    status = asn1_print(ndo, &elem);

   }
   if (status < 0)
    return;
  }
  length = vblength;
  np = vbend;
 }
}
