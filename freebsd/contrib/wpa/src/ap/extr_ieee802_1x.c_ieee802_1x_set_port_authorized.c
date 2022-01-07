
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ieee802_1x_set_sta_authorized (struct hostapd_data*,struct sta_info*,int) ;

__attribute__((used)) static void ieee802_1x_set_port_authorized(void *ctx, void *sta_ctx,
        int authorized)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = sta_ctx;
 ieee802_1x_set_sta_authorized(hapd, sta, authorized);
}
