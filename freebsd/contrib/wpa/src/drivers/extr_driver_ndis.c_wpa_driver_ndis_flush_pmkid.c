
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {scalar_t__ no_of_pmkid; struct ndis_pmkid_entry* pmkid; } ;
struct ndis_pmkid_entry {struct ndis_pmkid_entry* next; } ;
typedef int p ;
struct TYPE_3__ {int Length; scalar_t__ BSSIDInfoCount; } ;
typedef TYPE_1__ NDIS_802_11_PMKID ;


 int MSG_MSGDUMP ;
 int Ndis802_11AuthModeWPA2 ;
 int OID_802_11_PMKID ;
 int ndis_get_auth_mode (struct wpa_driver_ndis_data*) ;
 int ndis_set_auth_mode (struct wpa_driver_ndis_data*,int) ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_free (struct ndis_pmkid_entry*) ;
 int os_memset (TYPE_1__*,int ,int) ;
 int wpa_hexdump (int ,char*,int *,int) ;

__attribute__((used)) static int wpa_driver_ndis_flush_pmkid(void *priv)
{
 struct wpa_driver_ndis_data *drv = priv;
 NDIS_802_11_PMKID p;
 struct ndis_pmkid_entry *pmkid, *prev;
 int prev_authmode, ret;

 if (drv->no_of_pmkid == 0)
  return 0;

 pmkid = drv->pmkid;
 drv->pmkid = ((void*)0);
 while (pmkid) {
  prev = pmkid;
  pmkid = pmkid->next;
  os_free(prev);
 }





 prev_authmode = ndis_get_auth_mode(drv);
 if (prev_authmode != Ndis802_11AuthModeWPA2)
  ndis_set_auth_mode(drv, Ndis802_11AuthModeWPA2);

 os_memset(&p, 0, sizeof(p));
 p.Length = 8;
 p.BSSIDInfoCount = 0;
 wpa_hexdump(MSG_MSGDUMP, "NDIS: OID_802_11_PMKID (flush)",
      (u8 *) &p, 8);
 ret = ndis_set_oid(drv, OID_802_11_PMKID, (char *) &p, 8);

 if (prev_authmode != Ndis802_11AuthModeWPA2)
  ndis_set_auth_mode(drv, prev_authmode);

 return ret;
}
