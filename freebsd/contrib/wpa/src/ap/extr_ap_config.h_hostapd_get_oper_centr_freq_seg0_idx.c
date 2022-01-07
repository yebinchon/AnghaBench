
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_config {int vht_oper_centr_freq_seg0_idx; int he_oper_centr_freq_seg0_idx; scalar_t__ ieee80211ax; } ;



__attribute__((used)) static inline u8
hostapd_get_oper_centr_freq_seg0_idx(struct hostapd_config *conf)
{




 return conf->vht_oper_centr_freq_seg0_idx;
}
