
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpa_driver_ndis_data {int radio_enabled; } ;
typedef int buf ;
struct TYPE_3__ {size_t SsidLength; int Ssid; } ;
typedef TYPE_1__ NDIS_802_11_SSID ;


 int OID_802_11_SSID ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_memcpy (int ,int const*,size_t) ;
 int os_memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int wpa_driver_ndis_set_ssid(struct wpa_driver_ndis_data *drv,
        const u8 *ssid, size_t ssid_len)
{
 NDIS_802_11_SSID buf;

 os_memset(&buf, 0, sizeof(buf));
 buf.SsidLength = ssid_len;
 os_memcpy(buf.Ssid, ssid, ssid_len);





 drv->radio_enabled = 1;
 return ndis_set_oid(drv, OID_802_11_SSID, (char *) &buf, sizeof(buf));
}
