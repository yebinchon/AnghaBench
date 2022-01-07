
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_tnc_data {int recommendation; int tncs; } ;
typedef enum tncs_process_res { ____Placeholder_tncs_process_res } tncs_process_res ;


 int ALLOW ;
 int FAIL ;
 int ISOLATE ;
 int MSG_DEBUG ;
 int NO_ACCESS ;
 int NO_RECOMMENDATION ;
 int RECOMMENDATION ;





 int eap_tnc_set_state (struct eap_tnc_data*,int ) ;
 int tncs_process_if_tnccs (int ,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

__attribute__((used)) static void tncs_process(struct eap_tnc_data *data, struct wpabuf *inbuf)
{
 enum tncs_process_res res;

 res = tncs_process_if_tnccs(data->tncs, wpabuf_head(inbuf),
        wpabuf_len(inbuf));
 switch (res) {
 case 131:
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS allowed access");
  eap_tnc_set_state(data, RECOMMENDATION);
  data->recommendation = ALLOW;
  break;
 case 128:
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS has no recommendation");
  eap_tnc_set_state(data, RECOMMENDATION);
  data->recommendation = NO_RECOMMENDATION;
  break;
 case 130:
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS requested isolation");
  eap_tnc_set_state(data, RECOMMENDATION);
  data->recommendation = ISOLATE;
  break;
 case 129:
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS rejected access");
  eap_tnc_set_state(data, RECOMMENDATION);
  data->recommendation = NO_ACCESS;
  break;
 case 132:
  wpa_printf(MSG_DEBUG, "EAP-TNC: TNCS processing error");
  eap_tnc_set_state(data, FAIL);
  break;
 default:
  break;
 }
}
