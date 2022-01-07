
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ieee802_1x_abort_auth (struct hostapd_data*,struct sta_info*) ;

__attribute__((used)) static void _ieee802_1x_abort_auth(void *ctx, void *sta_ctx)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = sta_ctx;
 ieee802_1x_abort_auth(hapd, sta);
}
