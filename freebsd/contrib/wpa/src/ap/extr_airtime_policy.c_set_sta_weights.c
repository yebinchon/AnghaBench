
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {struct sta_info* next; } ;
struct hostapd_data {struct sta_info* sta_list; } ;


 int sta_set_airtime_weight (struct hostapd_data*,struct sta_info*,unsigned int) ;

__attribute__((used)) static void set_sta_weights(struct hostapd_data *hapd, unsigned int weight)
{
 struct sta_info *sta;

 for (sta = hapd->sta_list; sta; sta = sta->next)
  sta_set_airtime_weight(hapd, sta, weight);
}
