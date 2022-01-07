
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ FC_PROTECTED (int ) ;
 int FC_SUBTYPE (int ) ;
 int ND_PRINT (int *) ;
 int handle_action (int *,int const*,int const*,int ) ;
 int handle_assoc_request (int *,int const*,int ) ;
 int handle_assoc_response (int *,int const*,int ) ;
 int handle_atim () ;
 int handle_auth (int *,int const*,int ) ;
 int handle_beacon (int *,int const*,int ) ;
 int handle_deauth (int *,int const*,int const*,int ) ;
 int handle_disassoc (int *,int const*,int ) ;
 int handle_probe_request (int *,int const*,int ) ;
 int handle_probe_response (int *,int const*,int ) ;
 int handle_reassoc_request (int *,int const*,int ) ;
 int handle_reassoc_response (int *,int const*,int ) ;
 int st_str ;
 int tok2str (int ,char*,int) ;
 int wep_print (int *,int const*) ;

__attribute__((used)) static int
mgmt_body_print(netdissect_options *ndo,
                uint16_t fc, const uint8_t *src, const u_char *p, u_int length)
{
 ND_PRINT((ndo, "%s", tok2str(st_str, "Unhandled Management subtype(%x)", FC_SUBTYPE(fc))));


 if (FC_PROTECTED(fc))
  return wep_print(ndo, p);
 switch (FC_SUBTYPE(fc)) {
 case 138:
  return handle_assoc_request(ndo, p, length);
 case 137:
  return handle_assoc_response(ndo, p, length);
 case 129:
  return handle_reassoc_request(ndo, p, length);
 case 128:
  return handle_reassoc_response(ndo, p, length);
 case 131:
  return handle_probe_request(ndo, p, length);
 case 130:
  return handle_probe_response(ndo, p, length);
 case 134:
  return handle_beacon(ndo, p, length);
 case 136:
  return handle_atim();
 case 132:
  return handle_disassoc(ndo, p, length);
 case 135:
  return handle_auth(ndo, p, length);
 case 133:
  return handle_deauth(ndo, src, p, length);
 case 139:
  return handle_action(ndo, src, p, length);
 default:
  return 1;
 }
}
