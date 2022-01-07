
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef struct wpabuf const wpabuf ;
struct eap_sm {int dummy; } ;
struct eap_sim_attrs {int id_req; } ;
struct eap_aka_data {int num_id_req; scalar_t__ prev_id; } ;



 int EAP_AKA_UNABLE_TO_PROCESS_PACKET ;

 int MSG_DEBUG ;
 int MSG_INFO ;


 int eap_aka_add_id_msg (struct eap_aka_data*,struct wpabuf const*) ;
 struct wpabuf const* eap_aka_client_error (struct eap_aka_data*,scalar_t__,int ) ;
 struct wpabuf const* eap_aka_response_identity (struct eap_sm*,struct eap_aka_data*,scalar_t__,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_aka_process_identity(struct eap_sm *sm,
      struct eap_aka_data *data,
      u8 id,
      const struct wpabuf *reqData,
      struct eap_sim_attrs *attr)
{
 int id_error;
 struct wpabuf *buf;

 wpa_printf(MSG_DEBUG, "EAP-AKA: subtype Identity");

 id_error = 0;
 switch (attr->id_req) {
 case 129:
  break;
 case 131:
  if (data->num_id_req > 0)
   id_error++;
  data->num_id_req++;
  break;
 case 130:
  if (data->num_id_req > 1)
   id_error++;
  data->num_id_req++;
  break;
 case 128:
  if (data->num_id_req > 2)
   id_error++;
  data->num_id_req++;
  break;
 }
 if (id_error) {
  wpa_printf(MSG_INFO, "EAP-AKA: Too many ID requests "
      "used within one authentication");
  return eap_aka_client_error(data, id,
         EAP_AKA_UNABLE_TO_PROCESS_PACKET);
 }

 buf = eap_aka_response_identity(sm, data, id, attr->id_req);

 if (data->prev_id != id) {
  eap_aka_add_id_msg(data, reqData);
  eap_aka_add_id_msg(data, buf);
  data->prev_id = id;
 }

 return buf;
}
