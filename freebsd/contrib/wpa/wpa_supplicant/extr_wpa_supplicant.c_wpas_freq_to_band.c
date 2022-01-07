
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum wpa_radio_work_band { ____Placeholder_wpa_radio_work_band } wpa_radio_work_band ;


 int BAND_2_4_GHZ ;
 int BAND_5_GHZ ;
 int BAND_60_GHZ ;

enum wpa_radio_work_band wpas_freq_to_band(int freq)
{
 if (freq < 3000)
  return BAND_2_4_GHZ;
 if (freq > 50000)
  return BAND_60_GHZ;
 return BAND_5_GHZ;
}
