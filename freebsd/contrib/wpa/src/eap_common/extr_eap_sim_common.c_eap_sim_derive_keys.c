
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;


 int EAP_EMSK_LEN ;
 int EAP_SIM_KEYING_DATA_LEN ;
 int EAP_SIM_K_AUT_LEN ;
 int EAP_SIM_K_ENCR_LEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 scalar_t__ eap_sim_prf (int const*,int *,int) ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (int *,int ,int) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

int eap_sim_derive_keys(const u8 *mk, u8 *k_encr, u8 *k_aut, u8 *msk, u8 *emsk)
{
 u8 buf[EAP_SIM_K_ENCR_LEN + EAP_SIM_K_AUT_LEN +
        EAP_SIM_KEYING_DATA_LEN + EAP_EMSK_LEN], *pos;
 if (eap_sim_prf(mk, buf, sizeof(buf)) < 0) {
  wpa_printf(MSG_ERROR, "EAP-SIM: Failed to derive keys");
  return -1;
 }
 pos = buf;
 os_memcpy(k_encr, pos, EAP_SIM_K_ENCR_LEN);
 pos += EAP_SIM_K_ENCR_LEN;
 os_memcpy(k_aut, pos, EAP_SIM_K_AUT_LEN);
 pos += EAP_SIM_K_AUT_LEN;
 os_memcpy(msk, pos, EAP_SIM_KEYING_DATA_LEN);
 pos += EAP_SIM_KEYING_DATA_LEN;
 os_memcpy(emsk, pos, EAP_EMSK_LEN);

 wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: K_encr",
   k_encr, EAP_SIM_K_ENCR_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: K_aut",
   k_aut, EAP_SIM_K_AUT_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: keying material (MSK)",
   msk, EAP_SIM_KEYING_DATA_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-SIM: EMSK", emsk, EAP_EMSK_LEN);
 os_memset(buf, 0, sizeof(buf));

 return 0;
}
