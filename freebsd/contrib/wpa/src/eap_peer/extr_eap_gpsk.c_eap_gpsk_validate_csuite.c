
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_gpsk_data {int vendor; int specifier; } ;
struct eap_gpsk_csuite {int specifier; int vendor; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int ) ;
 int WPA_GET_BE32 (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * eap_gpsk_validate_csuite(struct eap_gpsk_data *data,
        const u8 *pos, const u8 *end)
{
 int vendor, specifier;
 const struct eap_gpsk_csuite *csuite;

 if (pos == ((void*)0))
  return ((void*)0);

 if (end - pos < (int) sizeof(*csuite)) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for "
      "CSuite_Sel");
  return ((void*)0);
 }
 csuite = (const struct eap_gpsk_csuite *) pos;
 vendor = WPA_GET_BE32(csuite->vendor);
 specifier = WPA_GET_BE16(csuite->specifier);
 pos += sizeof(*csuite);
 if (vendor != data->vendor || specifier != data->specifier) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: CSuite_Sel (%d:%d) does not "
      "match with the one sent in GPSK-2 (%d:%d)",
      vendor, specifier, data->vendor, data->specifier);
  return ((void*)0);
 }

 return pos;
}
