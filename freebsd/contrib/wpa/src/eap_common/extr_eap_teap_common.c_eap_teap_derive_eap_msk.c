
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAP_TEAP_KEY_LEN ;
 int EAP_TEAP_SIMCK_LEN ;
 int MSG_DEBUG ;
 scalar_t__ eap_teap_tls_prf (int const*,int ,char*,int *,int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

int eap_teap_derive_eap_msk(const u8 *simck, u8 *msk)
{





 if (eap_teap_tls_prf(simck, EAP_TEAP_SIMCK_LEN,
        "Session Key Generating Function", (u8 *) "", 0,
        msk, EAP_TEAP_KEY_LEN) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-TEAP: Derived key (MSK)",
   msk, EAP_TEAP_KEY_LEN);
 return 0;
}
