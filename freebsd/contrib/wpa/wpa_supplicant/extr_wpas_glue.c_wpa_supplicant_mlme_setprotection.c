
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int wpa_drv_mlme_setprotection (void*,int const*,int,int) ;

__attribute__((used)) static int wpa_supplicant_mlme_setprotection(void *wpa_s, const u8 *addr,
          int protection_type,
          int key_type)
{
 return wpa_drv_mlme_setprotection(wpa_s, addr, protection_type,
       key_type);
}
