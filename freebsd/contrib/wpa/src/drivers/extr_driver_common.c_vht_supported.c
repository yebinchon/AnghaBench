
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int flags; int* vht_mcs_set; } ;


 int HOSTAPD_MODE_FLAG_VHT_INFO_KNOWN ;

int vht_supported(const struct hostapd_hw_modes *mode)
{
 if (!(mode->flags & HOSTAPD_MODE_FLAG_VHT_INFO_KNOWN)) {




  return 1;
 }





 return (mode->vht_mcs_set[0] & 0x3) != 3;
}
