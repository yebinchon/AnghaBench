
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_pmkid_params {int * pmkid; int * bssid; } ;
struct wpa_driver_ndis_data {scalar_t__ no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; int pmkid; int bssid; } ;


 int ETH_ALEN ;
 struct ndis_pmkid_entry* os_malloc (int) ;
 scalar_t__ os_memcmp (int ,int const*,int) ;
 int os_memcpy (int ,int const*,int) ;
 int wpa_driver_ndis_set_pmkid (struct wpa_driver_ndis_data*) ;

__attribute__((used)) static int wpa_driver_ndis_add_pmkid(void *priv,
         struct wpa_pmkid_params *params)
{
 struct wpa_driver_ndis_data *drv = priv;
 struct ndis_pmkid_entry *entry, *prev;
 const u8 *bssid = params->bssid;
 const u8 *pmkid = params->pmkid;

 if (!bssid || !pmkid)
  return -1;
 if (drv->no_of_pmkid == 0)
  return 0;

 prev = ((void*)0);
 entry = drv->pmkid;
 while (entry) {
  if (os_memcmp(entry->bssid, bssid, ETH_ALEN) == 0)
   break;
  prev = entry;
  entry = entry->next;
 }

 if (entry) {


  os_memcpy(entry->pmkid, pmkid, 16);
  if (prev) {
   prev->next = entry->next;
   entry->next = drv->pmkid;
   drv->pmkid = entry;
  }
 } else {
  entry = os_malloc(sizeof(*entry));
  if (entry) {
   os_memcpy(entry->bssid, bssid, ETH_ALEN);
   os_memcpy(entry->pmkid, pmkid, 16);
   entry->next = drv->pmkid;
   drv->pmkid = entry;
  }
 }

 return wpa_driver_ndis_set_pmkid(drv);
}
