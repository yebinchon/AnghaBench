
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAP_FAST_KEY_LEN ;
 int EAP_FAST_SIMCK_LEN ;
 int MSG_DEBUG ;
 scalar_t__ sha1_t_prf (int const*,int ,char*,int *,int ,int *,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

int eap_fast_derive_eap_msk(const u8 *simck, u8 *msk)
{





 if (sha1_t_prf(simck, EAP_FAST_SIMCK_LEN,
         "Session Key Generating Function", (u8 *) "", 0,
         msk, EAP_FAST_KEY_LEN) < 0)
  return -1;
 wpa_hexdump_key(MSG_DEBUG, "EAP-FAST: Derived key (MSK)",
   msk, EAP_FAST_KEY_LEN);
 return 0;
}
