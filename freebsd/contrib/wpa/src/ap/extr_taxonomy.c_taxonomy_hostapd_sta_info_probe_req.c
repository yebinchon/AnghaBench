
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_sta_info {int probe_ie_taxonomy; } ;
struct hostapd_data {int dummy; } ;


 int wpabuf_alloc_copy (int const*,size_t) ;
 int wpabuf_free (int ) ;

void taxonomy_hostapd_sta_info_probe_req(const struct hostapd_data *hapd,
      struct hostapd_sta_info *info,
      const u8 *ie, size_t ie_len)
{
 wpabuf_free(info->probe_ie_taxonomy);
 info->probe_ie_taxonomy = wpabuf_alloc_copy(ie, ie_len);
}
