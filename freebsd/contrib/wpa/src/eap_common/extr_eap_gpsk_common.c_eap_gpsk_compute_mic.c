
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;




 int EAP_GPSK_VENDOR_IETF ;
 int MSG_DEBUG ;
 int eap_gpsk_compute_mic_aes (int const*,size_t,int const*,size_t,int *) ;
 int hmac_sha256 (int const*,size_t,int const*,size_t,int *) ;
 int wpa_printf (int ,char*,...) ;

int eap_gpsk_compute_mic(const u8 *sk, size_t sk_len, int vendor,
    int specifier, const u8 *data, size_t len, u8 *mic)
{
 int ret;

 if (vendor != EAP_GPSK_VENDOR_IETF)
  return -1;

 switch (specifier) {
 case 129:
  ret = eap_gpsk_compute_mic_aes(sk, sk_len, data, len, mic);
  break;





 default:
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Unknown cipher %d:%d used in "
      "MIC computation", vendor, specifier);
  ret = -1;
  break;
 }

 if (ret)
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Could not compute MIC");

 return ret;
}
