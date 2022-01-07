
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int ieee802_1x_encapsulate_radius (struct hostapd_data*,struct sta_info*,int const*,size_t) ;

__attribute__((used)) static void ieee802_1x_aaa_send(void *ctx, void *sta_ctx,
    const u8 *data, size_t datalen)
{

 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = sta_ctx;

 ieee802_1x_encapsulate_radius(hapd, sta, data, datalen);

}
