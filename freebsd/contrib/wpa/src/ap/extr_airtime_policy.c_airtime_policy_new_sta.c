
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sta_info {int addr; } ;
struct hostapd_data {TYPE_1__* iconf; } ;
struct TYPE_2__ {scalar_t__ airtime_mode; } ;


 scalar_t__ AIRTIME_MODE_STATIC ;
 unsigned int get_weight_for_sta (struct hostapd_data*,int ) ;
 int sta_set_airtime_weight (struct hostapd_data*,struct sta_info*,unsigned int) ;

int airtime_policy_new_sta(struct hostapd_data *hapd, struct sta_info *sta)
{
 unsigned int weight;

 if (hapd->iconf->airtime_mode == AIRTIME_MODE_STATIC) {
  weight = get_weight_for_sta(hapd, sta->addr);
  if (weight)
   return sta_set_airtime_weight(hapd, sta, weight);
 }
 return 0;
}
