
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int FALSE ;
 int L2TP_AVP_HDR_FLAG_HIDDEN ;
 int L2TP_AVP_HDR_FLAG_MANDATORY ;
 int L2TP_AVP_HDR_LEN_MASK ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int TRUE ;
 int l2tp_accm_print (int *,int const*,int) ;
 int l2tp_avp2str ;
 int l2tp_bearer_cap_print (int *,int const*,int) ;
 int l2tp_bearer_type_print (int *,int const*,int) ;
 int l2tp_call_errors_print (int *,int const*,int) ;
 int l2tp_framing_cap_print (int *,int const*,int) ;
 int l2tp_framing_type_print (int *,int const*,int) ;
 int l2tp_msgtype_print (int *,int const*,int) ;
 int l2tp_packet_proc_delay_print (int *) ;
 int l2tp_ppp_discon_cc_print (int *,int const*,int) ;
 int l2tp_proto_ver_print (int *,int const*,int) ;
 int l2tp_proxy_auth_id_print (int *,int const*,int) ;
 int l2tp_proxy_auth_type_print (int *,int const*,int) ;
 int l2tp_q931_cc_print (int *,int const*,int) ;
 int l2tp_result_code_print (int *,int const*,int) ;
 int print_16bits_val (int *,int const*) ;
 int print_32bits_val (int *,int const*) ;
 int print_octets (int *,int const*,int) ;
 int print_string (int *,int const*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static void
l2tp_avp_print(netdissect_options *ndo, const u_char *dat, int length)
{
 u_int len;
 const uint16_t *ptr = (const uint16_t *)dat;
 uint16_t attr_type;
 int hidden = FALSE;

 if (length <= 0) {
  return;
 }

 ND_PRINT((ndo, " "));

 ND_TCHECK(*ptr);
 len = EXTRACT_16BITS(ptr) & L2TP_AVP_HDR_LEN_MASK;


 if (len < 6)
  goto trunc;



 if (len > (u_int)length)
  goto trunc;



 ND_TCHECK2(*ptr, len);







 if (EXTRACT_16BITS(ptr) & L2TP_AVP_HDR_FLAG_MANDATORY) {
  ND_PRINT((ndo, "*"));
 }
 if (EXTRACT_16BITS(ptr) & L2TP_AVP_HDR_FLAG_HIDDEN) {
  hidden = TRUE;
  ND_PRINT((ndo, "?"));
 }
 ptr++;

 if (EXTRACT_16BITS(ptr)) {

         ND_PRINT((ndo, "VENDOR%04x:", EXTRACT_16BITS(ptr))); ptr++;
  ND_PRINT((ndo, "ATTR%04x", EXTRACT_16BITS(ptr))); ptr++;
  ND_PRINT((ndo, "("));
  print_octets(ndo, (const u_char *)ptr, len-6);
  ND_PRINT((ndo, ")"));
 } else {

  ptr++;
  attr_type = EXTRACT_16BITS(ptr); ptr++;
  ND_PRINT((ndo, "%s", tok2str(l2tp_avp2str, "AVP-#%u", attr_type)));
  ND_PRINT((ndo, "("));
  if (hidden) {
   ND_PRINT((ndo, "???"));
  } else {
   switch (attr_type) {
   case 148:
    l2tp_msgtype_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 134:
    l2tp_result_code_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 143:
    l2tp_proto_ver_print(ndo, ptr, len-6);
    break;
   case 156:
    l2tp_framing_cap_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 165:
    l2tp_bearer_cap_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 130:
    if (len-6 < 8) {
     ND_PRINT((ndo, "AVP too short"));
     break;
    }
    print_octets(ndo, (const u_char *)ptr, 8);
    break;
   case 157:
   case 166:
   case 135:
   case 167:
    if (len-6 < 2) {
     ND_PRINT((ndo, "AVP too short"));
     break;
    }
    print_16bits_val(ndo, ptr);
    break;
   case 154:
   case 128:
   case 162:
   case 163:
   case 131:
   case 140:
   case 144:
    print_string(ndo, (const u_char *)ptr, len-6);
    break;
   case 159:
   case 153:
   case 151:
   case 152:
   case 142:
   case 139:
   case 136:
    print_octets(ndo, (const u_char *)ptr, len-6);
    break;
   case 137:
    l2tp_q931_cc_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 158:
    if (len-6 < 16) {
     ND_PRINT((ndo, "AVP too short"));
     break;
    }
    print_octets(ndo, (const u_char *)ptr, 16);
    break;
   case 160:
   case 149:
   case 150:
   case 129:
   case 146:
   case 133:
    if (len-6 < 4) {
     ND_PRINT((ndo, "AVP too short"));
     break;
    }
    print_32bits_val(ndo, (const uint32_t *)ptr);
    break;
   case 164:
    l2tp_bearer_type_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 155:
    l2tp_framing_type_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 147:
    l2tp_packet_proc_delay_print(ndo);
    break;
   case 138:
    l2tp_proxy_auth_type_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 141:
    l2tp_proxy_auth_id_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 161:
    l2tp_call_errors_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 168:
    l2tp_accm_print(ndo, (const u_char *)ptr, len-6);
    break;
   case 132:
    break;
   case 145:
    l2tp_ppp_discon_cc_print(ndo, (const u_char *)ptr, len-6);
    break;
   default:
    break;
   }
  }
  ND_PRINT((ndo, ")"));
 }

 l2tp_avp_print(ndo, dat+len, length-len);
 return;

 trunc:
 ND_PRINT((ndo, "|..."));
}
