
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_char ;
typedef int netdissect_options ;


 size_t CALL_REF_POS ;
 int EXTRACT_24BITS (scalar_t__ const*) ;
 size_t MSG_TYPE_POS ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (scalar_t__ const) ;
 size_t PROTO_POS ;
 scalar_t__ const Q2931 ;
 int msgtype2str ;
 int tok2str (int ,char*,scalar_t__ const) ;
 int tstr ;

__attribute__((used)) static void
sig_print(netdissect_options *ndo,
          const u_char *p)
{
 uint32_t call_ref;

 ND_TCHECK(p[PROTO_POS]);
 if (p[PROTO_POS] == Q2931) {




  ND_PRINT((ndo, "Q.2931"));
  ND_TCHECK(p[MSG_TYPE_POS]);
  ND_PRINT((ndo, ":%s ",
      tok2str(msgtype2str, "msgtype#%d", p[MSG_TYPE_POS])));







  call_ref = EXTRACT_24BITS(&p[CALL_REF_POS]);
  ND_PRINT((ndo, "CALL_REF:0x%06x", call_ref));
 } else {

  ND_PRINT((ndo, "SSCOP, proto %d ", p[PROTO_POS]));
 }
 return;

trunc:
 ND_PRINT((ndo, " %s", tstr));
}
