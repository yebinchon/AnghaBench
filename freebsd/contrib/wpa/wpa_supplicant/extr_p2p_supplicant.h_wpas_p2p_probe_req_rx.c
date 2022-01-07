
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;



__attribute__((used)) static inline int wpas_p2p_probe_req_rx(struct wpa_supplicant *wpa_s,
     const u8 *addr,
     const u8 *dst, const u8 *bssid,
     const u8 *ie, size_t ie_len,
     unsigned int rx_freq, int ssi_signal)
{
 return 0;
}
