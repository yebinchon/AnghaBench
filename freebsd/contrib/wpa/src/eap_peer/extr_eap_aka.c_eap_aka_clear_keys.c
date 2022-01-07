
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_aka_data {int auts; int autn; int emsk; int msk; int k_re; int k_encr; int k_aut; int mk; } ;


 int EAP_AKA_AUTN_LEN ;
 int EAP_AKA_AUTS_LEN ;
 int EAP_AKA_PRIME_K_AUT_LEN ;
 int EAP_AKA_PRIME_K_RE_LEN ;
 int EAP_EMSK_LEN ;
 int EAP_SIM_KEYING_DATA_LEN ;
 int EAP_SIM_K_ENCR_LEN ;
 int EAP_SIM_MK_LEN ;
 int os_memset (int ,int ,int ) ;

__attribute__((used)) static void eap_aka_clear_keys(struct eap_aka_data *data, int reauth)
{
 if (!reauth) {
  os_memset(data->mk, 0, EAP_SIM_MK_LEN);
  os_memset(data->k_aut, 0, EAP_AKA_PRIME_K_AUT_LEN);
  os_memset(data->k_encr, 0, EAP_SIM_K_ENCR_LEN);
  os_memset(data->k_re, 0, EAP_AKA_PRIME_K_RE_LEN);
 }
 os_memset(data->msk, 0, EAP_SIM_KEYING_DATA_LEN);
 os_memset(data->emsk, 0, EAP_EMSK_LEN);
 os_memset(data->autn, 0, EAP_AKA_AUTN_LEN);
 os_memset(data->auts, 0, EAP_AKA_AUTS_LEN);
}
