
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {struct mbo_non_pref_chan_info* non_pref_chan; } ;
struct mbo_non_pref_chan_info {struct mbo_non_pref_chan_info* next; } ;


 int os_free (struct mbo_non_pref_chan_info*) ;

void mbo_ap_sta_free(struct sta_info *sta)
{
 struct mbo_non_pref_chan_info *info, *prev;

 info = sta->non_pref_chan;
 sta->non_pref_chan = ((void*)0);
 while (info) {
  prev = info;
  info = info->next;
  os_free(prev);
 }
}
