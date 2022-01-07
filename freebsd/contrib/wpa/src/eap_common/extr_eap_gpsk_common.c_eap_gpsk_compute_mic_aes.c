
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_DEBUG ;
 int omac1_aes_128 (int const*,int const*,size_t,int *) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static int eap_gpsk_compute_mic_aes(const u8 *sk, size_t sk_len,
        const u8 *data, size_t len, u8 *mic)
{
 if (sk_len != 16) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Invalid SK length %lu for "
      "AES-CMAC MIC", (unsigned long) sk_len);
  return -1;
 }

 return omac1_aes_128(sk, data, len, mic);
}
