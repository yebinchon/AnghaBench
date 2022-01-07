
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hostapd_config {int vht_oper_chwidth; int he_oper_chwidth; scalar_t__ ieee80211ax; } ;



__attribute__((used)) static inline u8 hostapd_get_oper_chwidth(struct hostapd_config *conf)
{




 return conf->vht_oper_chwidth;
}
