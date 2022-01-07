
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct eap_sake_parse_attr {int mic_p; } ;
struct TYPE_2__ {int auth; } ;
struct eap_sake_data {scalar_t__ state; int peerid_len; int peerid; int rand_p; int rand_s; TYPE_1__ tek; } ;


 scalar_t__ CONFIRM ;
 int EAP_SAKE_MIC_LEN ;
 int FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SUCCESS ;
 scalar_t__ eap_sake_compute_mic (int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int ,int *) ;
 scalar_t__ eap_sake_parse_attributes (int const*,size_t,struct eap_sake_parse_attr*) ;
 int eap_sake_state (struct eap_sake_data*,int ) ;
 scalar_t__ os_memcmp_const (int ,int *,int) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static void eap_sake_process_confirm(struct eap_sm *sm,
         struct eap_sake_data *data,
         const struct wpabuf *respData,
         const u8 *payload, size_t payloadlen)
{
 struct eap_sake_parse_attr attr;
 u8 mic_p[EAP_SAKE_MIC_LEN];

 if (data->state != CONFIRM)
  return;

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Received Response/Confirm");

 if (eap_sake_parse_attributes(payload, payloadlen, &attr))
  return;

 if (!attr.mic_p) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Response/Confirm did not "
      "include AT_MIC_P");
  return;
 }

 if (eap_sake_compute_mic(data->tek.auth, data->rand_s, data->rand_p,
     sm->server_id, sm->server_id_len,
     data->peerid, data->peerid_len, 1,
     wpabuf_head(respData), wpabuf_len(respData),
     attr.mic_p, mic_p) < 0) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
  return;
 }
 if (os_memcmp_const(attr.mic_p, mic_p, EAP_SAKE_MIC_LEN) != 0) {
  wpa_printf(MSG_INFO, "EAP-SAKE: Incorrect AT_MIC_P");
  eap_sake_state(data, FAILURE);
 } else
  eap_sake_state(data, SUCCESS);
}
