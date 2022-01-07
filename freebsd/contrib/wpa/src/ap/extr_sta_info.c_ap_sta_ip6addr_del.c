
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int sta_ip6addr_del (struct hostapd_data*,struct sta_info*) ;

void ap_sta_ip6addr_del(struct hostapd_data *hapd, struct sta_info *sta)
{
 sta_ip6addr_del(hapd, sta);
}
