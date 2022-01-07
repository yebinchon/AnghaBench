
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_ndis_data {int dummy; } ;


 int SSID_MAX_LEN ;
 int rand () ;
 int wpa_driver_ndis_set_ssid (struct wpa_driver_ndis_data*,int *,int) ;

__attribute__((used)) static int wpa_driver_ndis_disconnect(struct wpa_driver_ndis_data *drv)
{
 char ssid[SSID_MAX_LEN];
 int i;
 for (i = 0; i < SSID_MAX_LEN; i++)
  ssid[i] = rand() & 0xff;
 return wpa_driver_ndis_set_ssid(drv, (u8 *) ssid, SSID_MAX_LEN);
}
