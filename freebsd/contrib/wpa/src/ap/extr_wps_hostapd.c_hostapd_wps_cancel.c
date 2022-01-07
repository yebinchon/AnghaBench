
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_cancel_ctx {int count; } ;
struct hostapd_data {int dummy; } ;
typedef int ctx ;


 int hostapd_wps_for_each (struct hostapd_data*,int ,struct wps_cancel_ctx*) ;
 int os_memset (struct wps_cancel_ctx*,int ,int) ;
 int wps_cancel ;

int hostapd_wps_cancel(struct hostapd_data *hapd)
{
 struct wps_cancel_ctx ctx;
 int ret;

 os_memset(&ctx, 0, sizeof(ctx));
 ret = hostapd_wps_for_each(hapd, wps_cancel, &ctx);
 if (ret == 0 && !ctx.count)
  ret = -1;
 return ret;
}
