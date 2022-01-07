
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ method; scalar_t__ vendor; } ;
struct eap_ttls_data {int tnc_started; scalar_t__ phase2_type; TYPE_2__* phase2_method; int * phase2_priv; int num_phase2_eap_types; int phase2_eap_types; TYPE_1__ phase2_eap_type; scalar_t__ ready_for_tnc; } ;
struct eap_sm {int init_phase2; } ;
struct eap_method_ret {int dummy; } ;
struct eap_hdr {int dummy; } ;
struct TYPE_4__ {int * (* init ) (struct eap_sm*) ;} ;


 scalar_t__ EAP_TTLS_PHASE2_EAP ;
 scalar_t__ EAP_TYPE_NONE ;
 scalar_t__ EAP_TYPE_TNC ;
 scalar_t__ EAP_VENDOR_IETF ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 TYPE_2__* eap_peer_get_eap_method (scalar_t__,scalar_t__) ;
 scalar_t__ eap_peer_tls_phase2_nak (int ,int ,struct eap_hdr*,struct wpabuf**) ;
 int eap_ttls_phase2_eap_deinit (struct eap_sm*,struct eap_ttls_data*) ;
 int eap_ttls_phase2_eap_process (struct eap_sm*,struct eap_ttls_data*,struct eap_method_ret*,struct eap_hdr*,size_t,struct wpabuf**) ;
 int eap_ttls_phase2_select_eap_method (struct eap_ttls_data*,scalar_t__) ;
 int * stub1 (struct eap_sm*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_ttls_phase2_request_eap_method(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret,
           struct eap_hdr *hdr, size_t len,
           u8 method, struct wpabuf **resp)
{
 if (data->phase2_eap_type.vendor == EAP_VENDOR_IETF &&
     data->phase2_eap_type.method == EAP_TYPE_NONE)
  eap_ttls_phase2_select_eap_method(data, method);

 if (method != data->phase2_eap_type.method || method == EAP_TYPE_NONE)
 {
  if (eap_peer_tls_phase2_nak(data->phase2_eap_types,
         data->num_phase2_eap_types,
         hdr, resp))
   return -1;
  return 0;
 }

 if (data->phase2_priv == ((void*)0)) {
  data->phase2_method = eap_peer_get_eap_method(
   EAP_VENDOR_IETF, method);
  if (data->phase2_method) {
   sm->init_phase2 = 1;
   data->phase2_priv = data->phase2_method->init(sm);
   sm->init_phase2 = 0;
  }
 }
 if (data->phase2_priv == ((void*)0) || data->phase2_method == ((void*)0)) {
  wpa_printf(MSG_INFO, "EAP-TTLS: failed to initialize "
      "Phase 2 EAP method %d", method);
  return -1;
 }

 return eap_ttls_phase2_eap_process(sm, data, ret, hdr, len, resp);
}
