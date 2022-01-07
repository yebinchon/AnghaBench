
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_hw_modes {int flags; int* mcs_set; } ;


 int HOSTAPD_MODE_FLAG_HT_INFO_KNOWN ;

int ht_supported(const struct hostapd_hw_modes *mode)
{
 if (!(mode->flags & HOSTAPD_MODE_FLAG_HT_INFO_KNOWN)) {




  return 1;
 }





 return mode->mcs_set[0] == 0xff;
}
