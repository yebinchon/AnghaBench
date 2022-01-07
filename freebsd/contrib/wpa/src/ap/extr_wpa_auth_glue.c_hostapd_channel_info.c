
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_channel_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int hostapd_drv_channel_info (struct hostapd_data*,struct wpa_channel_info*) ;

__attribute__((used)) static int hostapd_channel_info(void *ctx, struct wpa_channel_info *ci)
{
 struct hostapd_data *hapd = ctx;

 return hostapd_drv_channel_info(hapd, ci);
}
