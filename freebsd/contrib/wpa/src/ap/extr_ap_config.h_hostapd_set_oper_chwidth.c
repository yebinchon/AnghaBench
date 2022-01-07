
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hostapd_config {void* vht_oper_chwidth; void* he_oper_chwidth; scalar_t__ ieee80211ax; } ;



__attribute__((used)) static inline void
hostapd_set_oper_chwidth(struct hostapd_config *conf, u8 oper_chwidth)
{




 conf->vht_oper_chwidth = oper_chwidth;
}
