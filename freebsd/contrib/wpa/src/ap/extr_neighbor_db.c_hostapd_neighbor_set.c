
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid_value {int dummy; } ;
typedef struct wpa_ssid_value u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_neighbor_entry {int stationary; void* civic; int lci_date; void* lci; void* nr; int ssid; int * bssid; } ;
struct hostapd_data {int dummy; } ;


 int ETH_ALEN ;
 struct hostapd_neighbor_entry* hostapd_neighbor_add (struct hostapd_data*) ;
 int hostapd_neighbor_clear_entry (struct hostapd_neighbor_entry*) ;
 struct hostapd_neighbor_entry* hostapd_neighbor_get (struct hostapd_data*,struct wpa_ssid_value const*,struct wpa_ssid_value const*) ;
 int hostapd_neighbor_remove (struct hostapd_data*,struct wpa_ssid_value const*,struct wpa_ssid_value const*) ;
 scalar_t__ os_get_time (int *) ;
 int os_memcpy (int *,struct wpa_ssid_value const*,int) ;
 void* wpabuf_dup (struct wpabuf const*) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;

int hostapd_neighbor_set(struct hostapd_data *hapd, const u8 *bssid,
    const struct wpa_ssid_value *ssid,
    const struct wpabuf *nr, const struct wpabuf *lci,
    const struct wpabuf *civic, int stationary)
{
 struct hostapd_neighbor_entry *entry;

 entry = hostapd_neighbor_get(hapd, bssid, ssid);
 if (!entry)
  entry = hostapd_neighbor_add(hapd);
 if (!entry)
  return -1;

 hostapd_neighbor_clear_entry(entry);

 os_memcpy(entry->bssid, bssid, ETH_ALEN);
 os_memcpy(&entry->ssid, ssid, sizeof(entry->ssid));

 entry->nr = wpabuf_dup(nr);
 if (!entry->nr)
  goto fail;

 if (lci && wpabuf_len(lci)) {
  entry->lci = wpabuf_dup(lci);
  if (!entry->lci || os_get_time(&entry->lci_date))
   goto fail;
 }

 if (civic && wpabuf_len(civic)) {
  entry->civic = wpabuf_dup(civic);
  if (!entry->civic)
   goto fail;
 }

 entry->stationary = stationary;

 return 0;

fail:
 hostapd_neighbor_remove(hapd, bssid, ssid);
 return -1;
}
