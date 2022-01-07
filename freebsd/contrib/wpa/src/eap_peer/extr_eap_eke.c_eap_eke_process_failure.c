
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wpabuf {int dummy; } ;
struct eap_method_ret {int dummy; } ;
struct eap_eke_data {int dummy; } ;


 int EAP_EKE_FAIL_NO_ERROR ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPA_GET_BE32 (int const*) ;
 struct wpabuf* eap_eke_build_fail (struct eap_eke_data*,struct eap_method_ret*,int ,int ) ;
 int eap_get_id (struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static struct wpabuf * eap_eke_process_failure(struct eap_eke_data *data,
            struct eap_method_ret *ret,
            const struct wpabuf *reqData,
            const u8 *payload,
            size_t payload_len)
{
 wpa_printf(MSG_DEBUG, "EAP-EKE: Received EAP-EKE-Failure/Request");

 if (payload_len < 4) {
  wpa_printf(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Failure");
 } else {
  u32 code;
  code = WPA_GET_BE32(payload);
  wpa_printf(MSG_INFO, "EAP-EKE: Failure-Code 0x%x", code);
 }

 return eap_eke_build_fail(data, ret, eap_get_id(reqData),
      EAP_EKE_FAIL_NO_ERROR);
}
