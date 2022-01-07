
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_eke_data {int dummy; } ;


 int FAILURE ;
 int MSG_DEBUG ;
 int WPA_GET_BE32 (int const*) ;
 int eap_eke_state (struct eap_eke_data*,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_eke_process_failure(struct eap_sm *sm,
        struct eap_eke_data *data,
        const struct wpabuf *respData,
        const u8 *payload, size_t payloadlen)
{
 u32 code;

 wpa_printf(MSG_DEBUG, "EAP-EKE: Received Response/Failure");

 if (payloadlen < 4) {
  wpa_printf(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Failure");
  eap_eke_state(data, FAILURE);
  return;
 }

 code = WPA_GET_BE32(payload);
 wpa_printf(MSG_DEBUG, "EAP-EKE: Peer reported failure code 0x%x", code);

 eap_eke_state(data, FAILURE);
}
