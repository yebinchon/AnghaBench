
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_teap_data {int cmk_emsk_available; scalar_t__ simck_idx; int simck_emsk; int simck_msk; int phase2_priv; TYPE_1__* phase2_method; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {int * (* get_emsk ) (struct eap_sm*,int ,size_t*) ;int (* isKeyAvailable ) (struct eap_sm*,int ) ;int * (* getKey ) (struct eap_sm*,int ,size_t*) ;} ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int bin_clear_free (int *,size_t) ;
 int eap_teap_derive_cmk_basic_pw_auth (int ,int *) ;
 int eap_teap_derive_imck (int ,int ,int *,size_t,int *,size_t,int ,int *,int ,int *) ;
 int stub1 (struct eap_sm*,int ) ;
 int * stub2 (struct eap_sm*,int ,size_t*) ;
 int * stub3 (struct eap_sm*,int ,size_t*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_teap_get_cmk(struct eap_sm *sm, struct eap_teap_data *data,
       u8 *cmk_msk, u8 *cmk_emsk)
{
 u8 *msk = ((void*)0), *emsk = ((void*)0);
 size_t msk_len = 0, emsk_len = 0;
 int res;

 wpa_printf(MSG_DEBUG,
     "EAP-TEAP: Determining CMK[%d] for Compound MAC calculation",
     data->simck_idx + 1);

 if (!data->phase2_method)
  return eap_teap_derive_cmk_basic_pw_auth(data->simck_msk,
        cmk_msk);

 if (!data->phase2_method || !data->phase2_priv) {
  wpa_printf(MSG_INFO, "EAP-TEAP: Phase 2 method not available");
  return -1;
 }

 if (data->phase2_method->isKeyAvailable &&
     !data->phase2_method->isKeyAvailable(sm, data->phase2_priv)) {
  wpa_printf(MSG_INFO,
      "EAP-TEAP: Phase 2 key material not available");
  return -1;
 }

 if (data->phase2_method->isKeyAvailable &&
     data->phase2_method->getKey) {
  msk = data->phase2_method->getKey(sm, data->phase2_priv,
        &msk_len);
  if (!msk) {
   wpa_printf(MSG_INFO,
       "EAP-TEAP: Could not fetch Phase 2 MSK");
   return -1;
  }
 }

 if (data->phase2_method->isKeyAvailable &&
     data->phase2_method->get_emsk) {
  emsk = data->phase2_method->get_emsk(sm, data->phase2_priv,
           &emsk_len);
 }

 res = eap_teap_derive_imck(data->simck_msk, data->simck_emsk,
       msk, msk_len, emsk, emsk_len,
       data->simck_msk, cmk_msk,
       data->simck_emsk, cmk_emsk);
 bin_clear_free(msk, msk_len);
 bin_clear_free(emsk, emsk_len);
 if (res == 0) {
  data->simck_idx++;
  if (emsk)
   data->cmk_emsk_available = 1;
 }
 return res;
}
