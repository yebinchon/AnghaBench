
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mb_band_id { ____Placeholder_mb_band_id } mb_band_id ;
typedef enum hostapd_hw_mode { ____Placeholder_hostapd_hw_mode } hostapd_hw_mode ;






 int MB_BAND_ID_WIFI_2_4GHZ ;
 int MB_BAND_ID_WIFI_5GHZ ;
 int MB_BAND_ID_WIFI_60GHZ ;
 int WPA_ASSERT (int ) ;

enum mb_band_id fst_hw_mode_to_band(enum hostapd_hw_mode mode)
{
 switch (mode) {
 case 129:
 case 128:
  return MB_BAND_ID_WIFI_2_4GHZ;
 case 131:
  return MB_BAND_ID_WIFI_5GHZ;
 case 130:
  return MB_BAND_ID_WIFI_60GHZ;
 default:
  WPA_ASSERT(0);
  return MB_BAND_ID_WIFI_2_4GHZ;
 }
}
