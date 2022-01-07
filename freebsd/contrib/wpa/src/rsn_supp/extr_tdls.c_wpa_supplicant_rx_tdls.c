
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_tdls_frame {int payloadtype; scalar_t__ category; int action; } ;
struct wpa_sm {int own_addr; int tdls_supported; scalar_t__ tdls_disabled; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ WLAN_ACTION_TDLS ;





 scalar_t__ os_memcmp (int const*,int ,int ) ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_tdls_process_discovery_request (struct wpa_sm*,int const*,int const*,size_t) ;
 int wpa_tdls_process_tpk_m1 (struct wpa_sm*,int const*,int const*,size_t) ;
 int wpa_tdls_process_tpk_m2 (struct wpa_sm*,int const*,int const*,size_t) ;
 int wpa_tdls_process_tpk_m3 (struct wpa_sm*,int const*,int const*,size_t) ;
 int wpa_tdls_recv_teardown (struct wpa_sm*,int const*,int const*,size_t) ;

__attribute__((used)) static void wpa_supplicant_rx_tdls(void *ctx, const u8 *src_addr,
       const u8 *buf, size_t len)
{
 struct wpa_sm *sm = ctx;
 struct wpa_tdls_frame *tf;

 wpa_hexdump(MSG_DEBUG, "TDLS: Received Data frame encapsulation",
      buf, len);

 if (sm->tdls_disabled || !sm->tdls_supported) {
  wpa_printf(MSG_DEBUG, "TDLS: Discard message - TDLS disabled "
      "or unsupported by driver");
  return;
 }

 if (os_memcmp(src_addr, sm->own_addr, ETH_ALEN) == 0) {
  wpa_printf(MSG_DEBUG, "TDLS: Discard copy of own message");
  return;
 }

 if (len < sizeof(*tf)) {
  wpa_printf(MSG_INFO, "TDLS: Drop too short frame");
  return;
 }


 tf = (struct wpa_tdls_frame *) buf;
 if (tf->payloadtype != 2 ||
     tf->category != WLAN_ACTION_TDLS) {
  wpa_printf(MSG_INFO, "TDLS: Invalid frame - payloadtype=%u "
      "category=%u action=%u",
      tf->payloadtype, tf->category, tf->action);
  return;
 }

 switch (tf->action) {
 case 130:
  wpa_tdls_process_tpk_m1(sm, src_addr, buf, len);
  break;
 case 129:
  wpa_tdls_process_tpk_m2(sm, src_addr, buf, len);
  break;
 case 131:
  wpa_tdls_process_tpk_m3(sm, src_addr, buf, len);
  break;
 case 128:
  wpa_tdls_recv_teardown(sm, src_addr, buf, len);
  break;
 case 132:
  wpa_tdls_process_discovery_request(sm, src_addr, buf, len);
  break;
 default:

  wpa_printf(MSG_DEBUG, "TDLS: Ignore TDLS frame action code %u",
      tf->action);
  break;
 }
}
