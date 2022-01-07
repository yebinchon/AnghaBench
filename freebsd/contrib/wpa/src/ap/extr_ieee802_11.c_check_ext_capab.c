
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sta_info {int qos_map_enabled; int ecsa_supported; size_t* ext_capability; } ;
struct hostapd_data {int dummy; } ;


 int const BIT (int) ;
 int WLAN_STATUS_SUCCESS ;
 int os_free (size_t*) ;
 size_t* os_malloc (int) ;
 int os_memcpy (size_t*,int const*,size_t) ;

__attribute__((used)) static u16 check_ext_capab(struct hostapd_data *hapd, struct sta_info *sta,
      const u8 *ext_capab_ie, size_t ext_capab_ie_len)
{
 if (ext_capab_ie_len > 0) {
  sta->ecsa_supported = !!(ext_capab_ie[0] & BIT(2));
  os_free(sta->ext_capability);
  sta->ext_capability = os_malloc(1 + ext_capab_ie_len);
  if (sta->ext_capability) {
   sta->ext_capability[0] = ext_capab_ie_len;
   os_memcpy(sta->ext_capability + 1, ext_capab_ie,
      ext_capab_ie_len);
  }
 }

 return WLAN_STATUS_SUCCESS;
}
