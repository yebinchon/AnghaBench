
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IEEE80211_RATE_MCS ;

__attribute__((used)) static uint8_t
get_rate_value(uint8_t rate)
{
 if (rate & IEEE80211_RATE_MCS)
  return (rate &~ IEEE80211_RATE_MCS);
 return (rate / 2);
}
