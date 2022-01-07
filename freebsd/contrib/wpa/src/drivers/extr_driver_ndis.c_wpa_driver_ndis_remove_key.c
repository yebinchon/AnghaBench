
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {int dummy; } ;
typedef int rkey ;
typedef int index ;
struct TYPE_3__ {int Length; int KeyIndex; int BSSID; } ;
typedef TYPE_1__ NDIS_802_11_REMOVE_KEY ;
typedef int NDIS_802_11_KEY_INDEX ;


 int ETH_ALEN ;
 int OID_802_11_REMOVE_KEY ;
 int OID_802_11_REMOVE_WEP ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int wpa_driver_ndis_remove_key(struct wpa_driver_ndis_data *drv,
          int key_idx, const u8 *addr,
          const u8 *bssid, int pairwise)
{
 NDIS_802_11_REMOVE_KEY rkey;
 NDIS_802_11_KEY_INDEX index;
 int res, res2;

 os_memset(&rkey, 0, sizeof(rkey));

 rkey.Length = sizeof(rkey);
 rkey.KeyIndex = key_idx;
 if (pairwise)
  rkey.KeyIndex |= 1 << 30;
 os_memcpy(rkey.BSSID, bssid, ETH_ALEN);

 res = ndis_set_oid(drv, OID_802_11_REMOVE_KEY, (char *) &rkey,
      sizeof(rkey));
 if (!pairwise) {
  index = key_idx;
  res2 = ndis_set_oid(drv, OID_802_11_REMOVE_WEP,
        (char *) &index, sizeof(index));
 } else
  res2 = 0;

 if (res < 0 && res2 < 0)
  return -1;
 return 0;
}
