
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_scan_res {int ie_len; } ;
struct TYPE_3__ {int SsidLength; int Ssid; } ;
typedef TYPE_1__ NDIS_802_11_SSID ;


 int SSID_MAX_LEN ;
 int WLAN_EID_SSID ;
 int os_memcpy (int *,int ,int) ;
 struct wpa_scan_res* os_realloc (struct wpa_scan_res*,int) ;
 scalar_t__ wpa_scan_get_ie (struct wpa_scan_res*,int ) ;

__attribute__((used)) static struct wpa_scan_res * wpa_driver_ndis_add_scan_ssid(
 struct wpa_scan_res *r, NDIS_802_11_SSID *ssid)
{
 struct wpa_scan_res *nr;
 u8 *pos;

 if (wpa_scan_get_ie(r, WLAN_EID_SSID))
  return r;

 if (ssid->SsidLength == 0 || ssid->SsidLength > SSID_MAX_LEN)
  return r;

 nr = os_realloc(r, sizeof(*r) + r->ie_len + 2 + ssid->SsidLength);
 if (nr == ((void*)0))
  return r;

 pos = ((u8 *) (nr + 1)) + nr->ie_len;
 *pos++ = WLAN_EID_SSID;
 *pos++ = ssid->SsidLength;
 os_memcpy(pos, ssid->Ssid, ssid->SsidLength);
 nr->ie_len += 2 + ssid->SsidLength;

 return nr;
}
