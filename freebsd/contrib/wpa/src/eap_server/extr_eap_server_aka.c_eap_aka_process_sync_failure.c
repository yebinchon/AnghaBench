
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct eap_sm {int eap_sim_db_priv; } ;
struct eap_sim_attrs {int * auts; } ;
struct eap_aka_data {int auts_reported; void* notification; int rand; int permanent; } ;


 void* EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 int NOTIFICATION ;
 int eap_aka_fullauth (struct eap_sm*,struct eap_aka_data*) ;
 int eap_aka_state (struct eap_aka_data*,int ) ;
 scalar_t__ eap_sim_db_resynchronize (int ,int ,int *,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_aka_process_sync_failure(struct eap_sm *sm,
      struct eap_aka_data *data,
      struct wpabuf *respData,
      struct eap_sim_attrs *attr)
{
 wpa_printf(MSG_DEBUG, "EAP-AKA: Processing Synchronization-Failure");

 if (attr->auts == ((void*)0)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Synchronization-Failure "
      "message did not include valid AT_AUTS");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }




 if (!data->auts_reported &&
     eap_sim_db_resynchronize(sm->eap_sim_db_priv, data->permanent,
         attr->auts, data->rand)) {
  wpa_printf(MSG_WARNING, "EAP-AKA: Resynchronization failed");
  data->notification = EAP_SIM_GENERAL_FAILURE_BEFORE_AUTH;
  eap_aka_state(data, NOTIFICATION);
  return;
 }
 data->auts_reported = 1;


 eap_aka_fullauth(sm, data);
}
