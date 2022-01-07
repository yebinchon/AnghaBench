
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_driver_privsep_data {int dummy; } ;


 size_t ETH_ALEN ;
 int PRIVSEP_CMD_GET_BSSID ;
 int wpa_priv_cmd (struct wpa_driver_privsep_data*,int ,int *,int ,int *,size_t*) ;

__attribute__((used)) static int wpa_driver_privsep_get_bssid(void *priv, u8 *bssid)
{
 struct wpa_driver_privsep_data *drv = priv;
 int res;
 size_t len = ETH_ALEN;

 res = wpa_priv_cmd(drv, PRIVSEP_CMD_GET_BSSID, ((void*)0), 0, bssid, &len);
 if (res < 0 || len != ETH_ALEN)
  return -1;
 return 0;
}
