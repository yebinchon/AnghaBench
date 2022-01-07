
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {scalar_t__ wired; } ;
typedef int buf ;
struct TYPE_2__ {int SsidLength; int Ssid; } ;
typedef TYPE_1__ NDIS_802_11_SSID ;


 int MSG_DEBUG ;
 int OID_802_11_SSID ;
 int ndis_get_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_memcpy (int *,int ,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wpa_driver_ndis_get_ssid(void *priv, u8 *ssid)
{
 struct wpa_driver_ndis_data *drv = priv;
 NDIS_802_11_SSID buf;
 int res;

 res = ndis_get_oid(drv, OID_802_11_SSID, (char *) &buf, sizeof(buf));
 if (res < 4) {
  wpa_printf(MSG_DEBUG, "NDIS: Failed to get SSID");
  if (drv->wired) {
   wpa_printf(MSG_DEBUG, "NDIS: Allow get_ssid failure "
       "with a wired interface");
   return 0;
  }
  return -1;
 }
 os_memcpy(ssid, buf.Ssid, buf.SsidLength);
 return buf.SsidLength;
}
