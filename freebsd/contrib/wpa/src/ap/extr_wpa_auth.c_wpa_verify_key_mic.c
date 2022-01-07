
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wpa_ptk {int kck_len; int kck; } ;
struct wpa_eapol_key {int key_info; } ;
struct ieee802_1x_hdr {int dummy; } ;


 int WPA_EAPOL_KEY_MIC_MAX_LEN ;
 int WPA_GET_BE16 (int ) ;
 int WPA_KEY_INFO_TYPE_MASK ;
 scalar_t__ os_memcmp_const (int *,int *,size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int os_memset (int *,int ,size_t) ;
 scalar_t__ wpa_eapol_key_mic (int ,int ,int,int,int *,size_t,int *) ;
 size_t wpa_mic_len (int,size_t) ;

__attribute__((used)) static int wpa_verify_key_mic(int akmp, size_t pmk_len, struct wpa_ptk *PTK,
         u8 *data, size_t data_len)
{
 struct ieee802_1x_hdr *hdr;
 struct wpa_eapol_key *key;
 u16 key_info;
 int ret = 0;
 u8 mic[WPA_EAPOL_KEY_MIC_MAX_LEN], *mic_pos;
 size_t mic_len = wpa_mic_len(akmp, pmk_len);

 if (data_len < sizeof(*hdr) + sizeof(*key))
  return -1;

 hdr = (struct ieee802_1x_hdr *) data;
 key = (struct wpa_eapol_key *) (hdr + 1);
 mic_pos = (u8 *) (key + 1);
 key_info = WPA_GET_BE16(key->key_info);
 os_memcpy(mic, mic_pos, mic_len);
 os_memset(mic_pos, 0, mic_len);
 if (wpa_eapol_key_mic(PTK->kck, PTK->kck_len, akmp,
         key_info & WPA_KEY_INFO_TYPE_MASK,
         data, data_len, mic_pos) ||
     os_memcmp_const(mic, mic_pos, mic_len) != 0)
  ret = -1;
 os_memcpy(mic_pos, mic, mic_len);
 return ret;
}
