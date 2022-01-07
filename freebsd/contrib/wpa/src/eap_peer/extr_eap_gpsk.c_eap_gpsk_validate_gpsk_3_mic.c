
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct eap_gpsk_data {int specifier; int vendor; int sk_len; int sk; } ;


 int EAP_GPSK_MAX_MIC_LEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ eap_gpsk_compute_mic (int ,int ,int ,int ,int const*,int,int const*) ;
 size_t eap_gpsk_mic_len (int ,int ) ;
 scalar_t__ os_memcmp_const (int const*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static const u8 * eap_gpsk_validate_gpsk_3_mic(struct eap_gpsk_data *data,
            const u8 *payload,
            const u8 *pos, const u8 *end)
{
 size_t miclen;
 u8 mic[EAP_GPSK_MAX_MIC_LEN];

 if (pos == ((void*)0))
  return ((void*)0);

 miclen = eap_gpsk_mic_len(data->vendor, data->specifier);
 if (end - pos < (int) miclen) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for MIC "
      "(left=%lu miclen=%lu)",
      (unsigned long) (end - pos),
      (unsigned long) miclen);
  return ((void*)0);
 }
 if (eap_gpsk_compute_mic(data->sk, data->sk_len, data->vendor,
     data->specifier, payload, pos - payload, mic)
     < 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to compute MIC");
  return ((void*)0);
 }
 if (os_memcmp_const(mic, pos, miclen) != 0) {
  wpa_printf(MSG_INFO, "EAP-GPSK: Incorrect MIC in GPSK-3");
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Received MIC", pos, miclen);
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Computed MIC", mic, miclen);
  return ((void*)0);
 }
 pos += miclen;

 return pos;
}
