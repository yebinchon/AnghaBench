
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_ssid_value {int dummy; } ;
struct hostapd_neighbor_entry {int list; } ;
struct hostapd_data {int dummy; } ;


 int dl_list_del (int *) ;
 int hostapd_neighbor_clear_entry (struct hostapd_neighbor_entry*) ;
 struct hostapd_neighbor_entry* hostapd_neighbor_get (struct hostapd_data*,int const*,struct wpa_ssid_value const*) ;
 int os_free (struct hostapd_neighbor_entry*) ;

int hostapd_neighbor_remove(struct hostapd_data *hapd, const u8 *bssid,
       const struct wpa_ssid_value *ssid)
{
 struct hostapd_neighbor_entry *nr;

 nr = hostapd_neighbor_get(hapd, bssid, ssid);
 if (!nr)
  return -1;

 hostapd_neighbor_clear_entry(nr);
 dl_list_del(&nr->list);
 os_free(nr);

 return 0;
}
