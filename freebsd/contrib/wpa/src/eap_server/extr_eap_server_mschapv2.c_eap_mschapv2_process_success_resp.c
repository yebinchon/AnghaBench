
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_mschapv2_hdr {scalar_t__ op_code; } ;
struct eap_mschapv2_data {int state; } ;


 int EAP_TYPE_MSCHAPV2 ;
 int EAP_VENDOR_IETF ;
 int FAILURE ;
 scalar_t__ MSCHAPV2_OP_SUCCESS ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int * eap_hdr_validate (int ,int ,struct wpabuf*,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_mschapv2_process_success_resp(struct eap_sm *sm,
           struct eap_mschapv2_data *data,
           struct wpabuf *respData)
{
 struct eap_mschapv2_hdr *resp;
 const u8 *pos;
 size_t len;

 pos = eap_hdr_validate(EAP_VENDOR_IETF, EAP_TYPE_MSCHAPV2, respData,
          &len);
 if (pos == ((void*)0) || len < 1)
  return;

 resp = (struct eap_mschapv2_hdr *) pos;

 if (resp->op_code == MSCHAPV2_OP_SUCCESS) {
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Received Success Response"
      " - authentication completed successfully");
  data->state = SUCCESS;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-MSCHAPV2: Did not receive Success "
      "Response - peer rejected authentication");
  data->state = FAILURE;
 }
}
