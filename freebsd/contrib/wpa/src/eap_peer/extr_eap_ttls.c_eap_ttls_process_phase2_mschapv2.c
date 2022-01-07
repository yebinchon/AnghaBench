
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttls_parse_avp {scalar_t__* mschapv2; scalar_t__ eapdata; scalar_t__ mschapv2_error; } ;
struct eap_ttls_data {int phase2_success; scalar_t__ ident; int auth_response; int auth_response_valid; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {int decision; void* methodState; } ;


 int DECISION_FAIL ;
 int DECISION_UNCOND_SUCC ;
 void* METHOD_DONE ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 scalar_t__ mschapv2_verify_auth_response (int ,scalar_t__*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_ttls_process_phase2_mschapv2(struct eap_sm *sm,
         struct eap_ttls_data *data,
         struct eap_method_ret *ret,
         struct ttls_parse_avp *parse)
{
 wpa_printf(MSG_ERROR, "EAP-TTLS: MSCHAPv2 not included in the build");
 return -1;

}
