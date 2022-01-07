
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct airtime_sta_weight {int weight; struct airtime_sta_weight* next; int addr; } ;
struct TYPE_2__ {int airtime_weight; struct airtime_sta_weight* airtime_weight_list; } ;


 int ETH_ALEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;

__attribute__((used)) static int get_weight_for_sta(struct hostapd_data *hapd, const u8 *sta)
{
 struct airtime_sta_weight *wt;

 wt = hapd->conf->airtime_weight_list;
 while (wt && os_memcmp(wt->addr, sta, ETH_ALEN) != 0)
  wt = wt->next;

 return wt ? wt->weight : hapd->conf->airtime_weight;
}
