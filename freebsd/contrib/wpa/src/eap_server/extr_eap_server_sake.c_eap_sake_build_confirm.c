
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int server_id_len; int server_id; } ;
struct TYPE_2__ {int auth; } ;
struct eap_sake_data {void* state; int peerid_len; int peerid; int rand_p; int rand_s; TYPE_1__ tek; } ;


 scalar_t__ EAP_SAKE_AT_MIC_S ;
 scalar_t__ EAP_SAKE_MIC_LEN ;
 int EAP_SAKE_SUBTYPE_CONFIRM ;
 void* FAILURE ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 struct wpabuf* eap_sake_build_msg (struct eap_sake_data*,int ,scalar_t__,int ) ;
 scalar_t__ eap_sake_compute_mic (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int * wpabuf_put (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_u8 (struct wpabuf*,scalar_t__) ;

__attribute__((used)) static struct wpabuf * eap_sake_build_confirm(struct eap_sm *sm,
           struct eap_sake_data *data,
           u8 id)
{
 struct wpabuf *msg;
 u8 *mic;

 wpa_printf(MSG_DEBUG, "EAP-SAKE: Request/Confirm");

 msg = eap_sake_build_msg(data, id, 2 + EAP_SAKE_MIC_LEN,
     EAP_SAKE_SUBTYPE_CONFIRM);
 if (msg == ((void*)0)) {
  data->state = FAILURE;
  return ((void*)0);
 }

 wpa_printf(MSG_DEBUG, "EAP-SAKE: * AT_MIC_S");
 wpabuf_put_u8(msg, EAP_SAKE_AT_MIC_S);
 wpabuf_put_u8(msg, 2 + EAP_SAKE_MIC_LEN);
 mic = wpabuf_put(msg, EAP_SAKE_MIC_LEN);
 if (eap_sake_compute_mic(data->tek.auth, data->rand_s, data->rand_p,
     sm->server_id, sm->server_id_len,
     data->peerid, data->peerid_len, 0,
     wpabuf_head(msg), wpabuf_len(msg), mic, mic))
 {
  wpa_printf(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
  data->state = FAILURE;
  wpabuf_free(msg);
  return ((void*)0);
 }

 return msg;
}
