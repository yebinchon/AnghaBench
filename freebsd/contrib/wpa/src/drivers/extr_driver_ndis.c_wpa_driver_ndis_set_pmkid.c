
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {int no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; int pmkid; int bssid; } ;
struct TYPE_6__ {int Length; int BSSIDInfoCount; TYPE_1__* BSSIDInfo; } ;
struct TYPE_5__ {int PMKID; int BSSID; } ;
typedef TYPE_2__ NDIS_802_11_PMKID ;
typedef int BSSID_INFO ;


 int ETH_ALEN ;
 int MSG_MSGDUMP ;
 int OID_802_11_PMKID ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_free (TYPE_2__*) ;
 int os_memcpy (int *,int ,int) ;
 TYPE_2__* os_zalloc (int) ;
 int wpa_hexdump (int ,char*,int *,int) ;

__attribute__((used)) static int wpa_driver_ndis_set_pmkid(struct wpa_driver_ndis_data *drv)
{
 int len, count, i, ret;
 struct ndis_pmkid_entry *entry;
 NDIS_802_11_PMKID *p;

 count = 0;
 entry = drv->pmkid;
 while (entry) {
  count++;
  if (count >= drv->no_of_pmkid)
   break;
  entry = entry->next;
 }
 len = 8 + count * sizeof(BSSID_INFO);
 p = os_zalloc(len);
 if (p == ((void*)0))
  return -1;

 p->Length = len;
 p->BSSIDInfoCount = count;
 entry = drv->pmkid;
 for (i = 0; i < count; i++) {
  os_memcpy(&p->BSSIDInfo[i].BSSID, entry->bssid, ETH_ALEN);
  os_memcpy(&p->BSSIDInfo[i].PMKID, entry->pmkid, 16);
  entry = entry->next;
 }
 wpa_hexdump(MSG_MSGDUMP, "NDIS: OID_802_11_PMKID", (u8 *) p, len);
 ret = ndis_set_oid(drv, OID_802_11_PMKID, (char *) p, len);
 os_free(p);
 return ret;
}
