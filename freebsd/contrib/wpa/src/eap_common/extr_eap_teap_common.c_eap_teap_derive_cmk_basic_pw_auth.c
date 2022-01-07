
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int imck ;


 int EAP_TEAP_CMK_LEN ;
 int EAP_TEAP_IMCK_LEN ;
 size_t EAP_TEAP_SIMCK_LEN ;
 int MSG_DEBUG ;
 int eap_teap_tls_prf (int const*,size_t,char*,int *,int,int *,int) ;
 int forced_memzero (int *,int) ;
 int os_memcpy (int *,int *,int ) ;
 int os_memset (int *,int ,int) ;
 int wpa_hexdump_key (int ,char*,int *,int ) ;

int eap_teap_derive_cmk_basic_pw_auth(const u8 *s_imck_msk, u8 *cmk)
{
 u8 imsk[32], imck[EAP_TEAP_IMCK_LEN];
 int res;






 os_memset(imsk, 0, 32);
 res = eap_teap_tls_prf(s_imck_msk, EAP_TEAP_SIMCK_LEN,
          "Inner Methods Compound Keys",
          imsk, 32, imck, sizeof(imck));
 if (res < 0)
  return -1;
 os_memcpy(cmk, &imck[EAP_TEAP_SIMCK_LEN], EAP_TEAP_CMK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "EAP-TEAP: CMK[no-inner-EAP]",
   cmk, EAP_TEAP_CMK_LEN);
 forced_memzero(imck, sizeof(imck));
 return 0;
}
