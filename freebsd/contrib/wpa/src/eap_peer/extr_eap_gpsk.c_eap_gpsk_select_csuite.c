
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int msg_ctx; } ;
struct eap_gpsk_data {int vendor; int specifier; int forced_cipher; } ;
struct eap_gpsk_csuite {int specifier; int vendor; } ;


 int EAP_GPSK_CIPHER_RESERVED ;
 int EAP_GPSK_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_GET_BE16 (int ) ;
 int WPA_GET_BE32 (int ) ;
 scalar_t__ eap_gpsk_supported_ciphersuite (int,int) ;
 int wpa_msg (int ,int ,char*) ;
 int wpa_printf (int ,char*,int,int,...) ;

__attribute__((used)) static int eap_gpsk_select_csuite(struct eap_sm *sm,
      struct eap_gpsk_data *data,
      const u8 *csuite_list,
      size_t csuite_list_len)
{
 struct eap_gpsk_csuite *csuite;
 int i, count;

 count = csuite_list_len / sizeof(struct eap_gpsk_csuite);
 data->vendor = EAP_GPSK_VENDOR_IETF;
 data->specifier = EAP_GPSK_CIPHER_RESERVED;
 csuite = (struct eap_gpsk_csuite *) csuite_list;
 for (i = 0; i < count; i++) {
  int vendor, specifier;
  vendor = WPA_GET_BE32(csuite->vendor);
  specifier = WPA_GET_BE16(csuite->specifier);
  wpa_printf(MSG_DEBUG, "EAP-GPSK: CSuite[%d]: %d:%d",
      i, vendor, specifier);
  if (data->vendor == EAP_GPSK_VENDOR_IETF &&
      data->specifier == EAP_GPSK_CIPHER_RESERVED &&
      eap_gpsk_supported_ciphersuite(vendor, specifier) &&
      (!data->forced_cipher || data->forced_cipher == specifier))
  {
   data->vendor = vendor;
   data->specifier = specifier;
  }
  csuite++;
 }
 if (data->vendor == EAP_GPSK_VENDOR_IETF &&
     data->specifier == EAP_GPSK_CIPHER_RESERVED) {
  wpa_msg(sm->msg_ctx, MSG_INFO, "EAP-GPSK: No supported "
   "ciphersuite found");
  return -1;
 }
 wpa_printf(MSG_DEBUG, "EAP-GPSK: Selected ciphersuite %d:%d",
     data->vendor, data->specifier);

 return 0;
}
