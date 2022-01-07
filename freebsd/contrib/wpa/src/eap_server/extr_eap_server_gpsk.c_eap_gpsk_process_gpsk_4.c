
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
typedef int u16 ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {scalar_t__ state; int specifier; int vendor; int sk_len; int sk; } ;


 int EAP_GPSK_MAX_MIC_LEN ;
 int FAILURE ;
 scalar_t__ GPSK_3 ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 int SUCCESS ;
 int WPA_GET_BE16 (int const*) ;
 scalar_t__ eap_gpsk_compute_mic (int ,int ,int ,int ,int const*,int,int const*) ;
 size_t eap_gpsk_mic_len (int ,int ) ;
 int eap_gpsk_state (struct eap_gpsk_data*,int ) ;
 scalar_t__ os_memcmp_const (int const*,int const*,size_t) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void eap_gpsk_process_gpsk_4(struct eap_sm *sm,
        struct eap_gpsk_data *data,
        const u8 *payload, size_t payloadlen)
{
 const u8 *pos, *end;
 u16 alen;
 size_t miclen;
 u8 mic[EAP_GPSK_MAX_MIC_LEN];

 if (data->state != GPSK_3)
  return;

 wpa_printf(MSG_DEBUG, "EAP-GPSK: Received Response/GPSK-4");

 pos = payload;
 end = payload + payloadlen;

 if (end - pos < 2) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Too short message for "
      "PD_Payload_1 length");
  eap_gpsk_state(data, FAILURE);
  return;
 }
 alen = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < alen) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Too short message for "
      "PD_Payload_1");
  eap_gpsk_state(data, FAILURE);
  return;
 }
 wpa_hexdump(MSG_DEBUG, "EAP-GPSK: PD_Payload_1", pos, alen);
 pos += alen;

 miclen = eap_gpsk_mic_len(data->vendor, data->specifier);
 if (end - pos < (int) miclen) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Message too short for MIC "
      "(left=%lu miclen=%lu)",
      (unsigned long) (end - pos),
      (unsigned long) miclen);
  eap_gpsk_state(data, FAILURE);
  return;
 }
 if (eap_gpsk_compute_mic(data->sk, data->sk_len, data->vendor,
     data->specifier, payload, pos - payload, mic)
     < 0) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Failed to compute MIC");
  eap_gpsk_state(data, FAILURE);
  return;
 }
 if (os_memcmp_const(mic, pos, miclen) != 0) {
  wpa_printf(MSG_INFO, "EAP-GPSK: Incorrect MIC in GPSK-4");
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Received MIC", pos, miclen);
  wpa_hexdump(MSG_DEBUG, "EAP-GPSK: Computed MIC", mic, miclen);
  eap_gpsk_state(data, FAILURE);
  return;
 }
 pos += miclen;

 if (pos != end) {
  wpa_printf(MSG_DEBUG, "EAP-GPSK: Ignored %lu bytes of extra "
      "data in the end of GPSK-4",
      (unsigned long) (end - pos));
 }

 eap_gpsk_state(data, SUCCESS);
}
