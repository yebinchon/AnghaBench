
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int hapd_wps_cred_cb ;
 int hostapd_wps_for_each (struct hostapd_data*,int ,void*) ;

__attribute__((used)) static int hostapd_wps_cred_cb(void *ctx, const struct wps_credential *cred)
{
 struct hostapd_data *hapd = ctx;
 return hostapd_wps_for_each(hapd, hapd_wps_cred_cb, (void *) cred);
}
