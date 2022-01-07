
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {unsigned int airtime_weight; int addr; } ;
struct hostapd_data {int dummy; } ;


 int hostapd_sta_set_airtime_weight (struct hostapd_data*,int ,unsigned int) ;

__attribute__((used)) static int sta_set_airtime_weight(struct hostapd_data *hapd,
      struct sta_info *sta,
      unsigned int weight)
{
 int ret = 0;

 if (weight != sta->airtime_weight &&
     (ret = hostapd_sta_set_airtime_weight(hapd, sta->addr, weight)))
  return ret;

 sta->airtime_weight = weight;
 return ret;
}
