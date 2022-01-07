
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int addr; struct sta_info* hnext; } ;
struct hostapd_data {struct sta_info** sta_hash; } ;


 size_t STA_HASH (int ) ;

void ap_sta_hash_add(struct hostapd_data *hapd, struct sta_info *sta)
{
 sta->hnext = hapd->sta_hash[STA_HASH(sta->addr)];
 hapd->sta_hash[STA_HASH(sta->addr)] = sta;
}
