
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpas_mode { ____Placeholder_wpas_mode } wpas_mode ;


 int IEEE80211_MODE_AP ;
 int IEEE80211_MODE_IBSS ;
 int IEEE80211_MODE_INFRA ;
 int IEEE80211_MODE_MESH ;







__attribute__((used)) static inline int wpas_mode_to_ieee80211_mode(enum wpas_mode mode)
{
 switch (mode) {
 default:
 case 131:
  return IEEE80211_MODE_INFRA;
 case 132:
  return IEEE80211_MODE_IBSS;
 case 133:
 case 129:
 case 128:
  return IEEE80211_MODE_AP;
 case 130:
  return IEEE80211_MODE_MESH;
 }
}
