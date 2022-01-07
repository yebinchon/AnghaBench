
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_sim_data {scalar_t__ notification; scalar_t__ use_result_ind; } ;
struct eap_sim_attrs {int dummy; } ;


 scalar_t__ EAP_SIM_SUCCESS ;
 int FAILURE ;
 int MSG_DEBUG ;
 int SUCCESS ;
 int eap_sim_state (struct eap_sim_data*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sim_process_notification(struct eap_sm *sm,
      struct eap_sim_data *data,
      struct wpabuf *respData,
      struct eap_sim_attrs *attr)
{
 wpa_printf(MSG_DEBUG, "EAP-SIM: Client replied to notification");
 if (data->notification == EAP_SIM_SUCCESS && data->use_result_ind)
  eap_sim_state(data, SUCCESS);
 else
  eap_sim_state(data, FAILURE);
}
