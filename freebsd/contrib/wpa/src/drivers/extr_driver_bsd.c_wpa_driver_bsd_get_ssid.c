
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bsd_driver_data {int dummy; } ;


 int bsd_get_ssid (struct bsd_driver_data*,int *,int ) ;

__attribute__((used)) static int
wpa_driver_bsd_get_ssid(void *priv, u8 *ssid)
{
 struct bsd_driver_data *drv = priv;
 return bsd_get_ssid(drv, ssid, 0);
}
