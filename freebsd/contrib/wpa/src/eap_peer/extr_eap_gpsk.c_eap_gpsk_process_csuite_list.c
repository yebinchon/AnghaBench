
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {int dummy; } ;
struct eap_gpsk_csuite {int dummy; } ;


 int MSG_DEBUG ;
 size_t WPA_GET_BE16 (int const*) ;
 scalar_t__ eap_gpsk_select_csuite (struct eap_sm*,struct eap_gpsk_data*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * eap_gpsk_process_csuite_list(struct eap_sm *sm,
            struct eap_gpsk_data *data,
            const u8 **list,
            size_t *list_len,
            const u8 *pos, const u8 *end)
{
 size_t len;

 if (pos == ((void*)0))
  return ((void*)0);

 if (end - pos < 2) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Too short GPSK-1 packet");
  return ((void*)0);
 }
 len = WPA_GET_BE16(pos);
 pos += 2;
 if (len > (size_t) (end - pos)) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: CSuite_List overflow");
  return ((void*)0);
 }
 if (len == 0 || (len % sizeof(struct eap_gpsk_csuite))) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Invalid CSuite_List len %lu",
      (unsigned long) len);
  return ((void*)0);
 }

 if (eap_gpsk_select_csuite(sm, data, pos, len) < 0)
  return ((void*)0);

 *list = pos;
 *list_len = len;
 pos += len;

 return pos;
}
