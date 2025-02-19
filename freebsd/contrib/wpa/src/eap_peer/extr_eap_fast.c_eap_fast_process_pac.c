
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int expected_failure; } ;
struct eap_peer_config {int pac_file; } ;
struct eap_method_ret {int methodState; void* decision; } ;
struct eap_fast_pac {int dummy; } ;
struct eap_fast_data {scalar_t__ success; scalar_t__ anon_provisioning; scalar_t__ provisioning; int pac; scalar_t__ use_pac_binary_format; int max_pac_list_len; int current_pac; } ;
typedef int entry ;


 void* DECISION_COND_SUCC ;
 void* DECISION_FAIL ;
 int METHOD_DONE ;
 int MSG_DEBUG ;
 int eap_fast_add_pac (int *,int *,struct eap_fast_pac*) ;
 int eap_fast_pac_list_truncate (int ,int ) ;
 scalar_t__ eap_fast_process_pac_info (struct eap_fast_pac*) ;
 scalar_t__ eap_fast_process_pac_tlv (struct eap_fast_pac*,int *,size_t) ;
 int eap_fast_save_pac (struct eap_sm*,int ,int ) ;
 int eap_fast_save_pac_bin (struct eap_sm*,int ,int ) ;
 struct wpabuf* eap_fast_tlv_pac_ack () ;
 struct eap_peer_config* eap_get_config (struct eap_sm*) ;
 int os_memset (struct eap_fast_pac*,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static struct wpabuf * eap_fast_process_pac(struct eap_sm *sm,
         struct eap_fast_data *data,
         struct eap_method_ret *ret,
         u8 *pac, size_t pac_len)
{
 struct eap_peer_config *config = eap_get_config(sm);
 struct eap_fast_pac entry;

 os_memset(&entry, 0, sizeof(entry));
 if (eap_fast_process_pac_tlv(&entry, pac, pac_len) ||
     eap_fast_process_pac_info(&entry))
  return ((void*)0);

 eap_fast_add_pac(&data->pac, &data->current_pac, &entry);
 eap_fast_pac_list_truncate(data->pac, data->max_pac_list_len);
 if (data->use_pac_binary_format)
  eap_fast_save_pac_bin(sm, data->pac, config->pac_file);
 else
  eap_fast_save_pac(sm, data->pac, config->pac_file);

 if (data->provisioning) {
  if (data->anon_provisioning) {





   data->success = 0;
   ret->decision = DECISION_FAIL;
  } else {




   ret->decision = DECISION_COND_SUCC;
  }
  wpa_printf(MSG_DEBUG, "EAP-FAST: Send PAC-Acknowledgement TLV "
      "- Provisioning completed successfully");
  sm->expected_failure = 1;
 } else {
  wpa_printf(MSG_DEBUG, "EAP-FAST: Send PAC-Acknowledgement TLV "
      "- PAC refreshing completed successfully");
  ret->decision = DECISION_COND_SUCC;
 }
 ret->methodState = METHOD_DONE;
 return eap_fast_tlv_pac_ack();
}
