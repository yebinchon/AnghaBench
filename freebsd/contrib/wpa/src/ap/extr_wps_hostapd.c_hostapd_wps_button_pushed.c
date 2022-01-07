
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_button_pushed_ctx {int count; int const* p2p_dev_addr; } ;
struct hostapd_data {int dummy; } ;
typedef int ctx ;


 int hostapd_wps_for_each (struct hostapd_data*,int ,struct wps_button_pushed_ctx*) ;
 int os_memset (struct wps_button_pushed_ctx*,int ,int) ;
 int wps_button_pushed ;

int hostapd_wps_button_pushed(struct hostapd_data *hapd,
         const u8 *p2p_dev_addr)
{
 struct wps_button_pushed_ctx ctx;
 int ret;

 os_memset(&ctx, 0, sizeof(ctx));
 ctx.p2p_dev_addr = p2p_dev_addr;
 ret = hostapd_wps_for_each(hapd, wps_button_pushed, &ctx);
 if (ret == 0 && !ctx.count)
  ret = -1;
 return ret;
}
