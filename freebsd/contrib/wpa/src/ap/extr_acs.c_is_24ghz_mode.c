
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;


 int HOSTAPD_MODE_IEEE80211B ;
 int HOSTAPD_MODE_IEEE80211G ;

__attribute__((used)) static int is_24ghz_mode(enum hostapd_hw_mode mode)
{
 return mode == HOSTAPD_MODE_IEEE80211B ||
  mode == HOSTAPD_MODE_IEEE80211G;
}
