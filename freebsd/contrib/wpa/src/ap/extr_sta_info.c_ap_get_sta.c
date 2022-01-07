
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_info {struct sta_info* hnext; int addr; } ;
struct hostapd_data {struct sta_info** sta_hash; } ;


 size_t STA_HASH (int const*) ;
 scalar_t__ os_memcmp (int ,int const*,int) ;

struct sta_info * ap_get_sta(struct hostapd_data *hapd, const u8 *sta)
{
 struct sta_info *s;

 s = hapd->sta_hash[STA_HASH(sta)];
 while (s != ((void*)0) && os_memcmp(s->addr, sta, 6) != 0)
  s = s->hnext;
 return s;
}
