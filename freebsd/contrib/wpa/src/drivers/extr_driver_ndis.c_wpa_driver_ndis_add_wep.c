
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
struct TYPE_4__ {size_t Length; int KeyIndex; size_t KeyLength; int KeyMaterial; } ;
typedef TYPE_1__ NDIS_802_11_WEP ;


 int MSG_MSGDUMP ;
 int OID_802_11_ADD_WEP ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,size_t) ;
 int os_free (TYPE_1__*) ;
 int os_memcpy (int ,int const*,size_t) ;
 TYPE_1__* os_zalloc (size_t) ;
 int wpa_hexdump_key (int ,char*,int *,size_t) ;

__attribute__((used)) static int wpa_driver_ndis_add_wep(struct wpa_driver_ndis_data *drv,
       int pairwise, int key_idx, int set_tx,
       const u8 *key, size_t key_len)
{
 NDIS_802_11_WEP *wep;
 size_t len;
 int res;

 len = 12 + key_len;
 wep = os_zalloc(len);
 if (wep == ((void*)0))
  return -1;
 wep->Length = len;
 wep->KeyIndex = key_idx;
 if (set_tx)
  wep->KeyIndex |= 1 << 31;




 wep->KeyLength = key_len;
 os_memcpy(wep->KeyMaterial, key, key_len);

 wpa_hexdump_key(MSG_MSGDUMP, "NDIS: OID_802_11_ADD_WEP",
   (u8 *) wep, len);
 res = ndis_set_oid(drv, OID_802_11_ADD_WEP, (char *) wep, len);

 os_free(wep);

 return res;
}
