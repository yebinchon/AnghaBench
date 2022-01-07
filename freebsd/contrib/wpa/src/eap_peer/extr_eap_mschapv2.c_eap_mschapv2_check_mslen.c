
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ workaround; } ;
struct eap_mschapv2_hdr {int ms_length; } ;


 int MSG_INFO ;
 size_t WPA_GET_BE16 (int ) ;
 int wpa_printf (int ,char*,unsigned long,unsigned long) ;

__attribute__((used)) static int eap_mschapv2_check_mslen(struct eap_sm *sm, size_t len,
        const struct eap_mschapv2_hdr *ms)
{
 size_t ms_len = WPA_GET_BE16(ms->ms_length);

 if (ms_len == len)
  return 0;

 wpa_printf(MSG_INFO, "EAP-MSCHAPV2: Invalid header: len=%lu "
     "ms_len=%lu", (unsigned long) len, (unsigned long) ms_len);
 if (sm->workaround) {


  wpa_printf(MSG_INFO, "EAP-MSCHAPV2: workaround, ignore"
      " invalid ms_len %lu (len %lu)",
      (unsigned long) ms_len,
      (unsigned long) len);
  return 0;
 }

 return -1;
}
