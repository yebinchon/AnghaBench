
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
typedef int u_char ;
struct tok {int dummy; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 scalar_t__ OFPET_BAD_ACTION ;
 scalar_t__ OFPET_BAD_REQUEST ;
 scalar_t__ OFPET_FLOW_MOD_FAILED ;
 scalar_t__ OFPET_HELLO_FAILED ;
 scalar_t__ OFPET_PORT_MOD_FAILED ;
 scalar_t__ OFPET_QUEUE_OP_FAILED ;
 scalar_t__ const OF_ERROR_MSG_LEN ;
 struct tok* empty_str ;
 int const* of10_data_print (int *,int const*,int const*,scalar_t__ const) ;
 struct tok* ofpbac_str ;
 struct tok* ofpbrc_str ;
 struct tok const* ofpet_str ;
 struct tok* ofpfmfc_str ;
 struct tok* ofphfc_str ;
 struct tok* ofppmfc_str ;
 struct tok* ofpqofc_str ;
 int tok2str (struct tok const*,char*,scalar_t__) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_error_print(netdissect_options *ndo,
                 const u_char *cp, const u_char *ep, const u_int len)
{
 uint16_t type;
 const struct tok *code_str;


 ND_TCHECK2(*cp, 2);
 type = EXTRACT_16BITS(cp);
 cp += 2;
 ND_PRINT((ndo, "\n\t type %s", tok2str(ofpet_str, "invalid (0x%04x)", type)));

 ND_TCHECK2(*cp, 2);
 code_str =
  type == OFPET_HELLO_FAILED ? ofphfc_str :
  type == OFPET_BAD_REQUEST ? ofpbrc_str :
  type == OFPET_BAD_ACTION ? ofpbac_str :
  type == OFPET_FLOW_MOD_FAILED ? ofpfmfc_str :
  type == OFPET_PORT_MOD_FAILED ? ofppmfc_str :
  type == OFPET_QUEUE_OP_FAILED ? ofpqofc_str :
  empty_str;
 ND_PRINT((ndo, ", code %s", tok2str(code_str, "invalid (0x%04x)", EXTRACT_16BITS(cp))));
 cp += 2;

 return of10_data_print(ndo, cp, ep, len - OF_ERROR_MSG_LEN);

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
