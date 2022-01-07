
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAP_EMSK_LEN ;
 int EAP_TEAP_SIMCK_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_teap_tls_prf (int const*,int ,char*,int *,int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

int eap_teap_derive_eap_emsk(const u8 *simck, u8 *emsk)
{






 if (eap_teap_tls_prf(simck, EAP_TEAP_SIMCK_LEN,
        "Extended Session Key Generating Function",
        (u8 *) "", 0, emsk, EAP_EMSK_LEN) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-TEAP: Derived key (EMSK)",
   emsk, EAP_EMSK_LEN);
 return 0;
}
