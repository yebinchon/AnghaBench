
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IEEE80211_RATE_MCS ;

__attribute__((used)) static const char*
get_mcs_mbs_rate_str(uint8_t rate)
{
 return (rate & IEEE80211_RATE_MCS) ? "MCS " : "Mb/s";
}
