
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {size_t last_gtk_len; int last_tk_alg; int last_tk_key_idx; size_t last_tk_len; int last_tk; int last_tk_addr; int last_gtk; scalar_t__ mic_errors_seen; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 size_t ETH_ALEN ;
 int WPA_ALG_NONE ;
 int WPA_ALG_TKIP ;
 scalar_t__ is_broadcast_ether_addr (int const*) ;
 int os_memcpy (int ,int const*,size_t) ;
 int wpa_drv_set_key (struct wpa_supplicant*,int,int const*,int,int,int const*,size_t,int const*,size_t) ;

__attribute__((used)) static int wpa_supplicant_set_key(void *_wpa_s, enum wpa_alg alg,
      const u8 *addr, int key_idx, int set_tx,
      const u8 *seq, size_t seq_len,
      const u8 *key, size_t key_len)
{
 struct wpa_supplicant *wpa_s = _wpa_s;
 if (alg == WPA_ALG_TKIP && key_idx == 0 && key_len == 32) {

  wpa_s->mic_errors_seen = 0;
 }
 return wpa_drv_set_key(wpa_s, alg, addr, key_idx, set_tx, seq, seq_len,
          key, key_len);
}
