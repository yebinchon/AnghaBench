
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_WPA_NONE ;
 scalar_t__ wpa_key_mgmt_wpa (int) ;

__attribute__((used)) static inline int wpa_key_mgmt_wpa_any(int akm)
{
 return wpa_key_mgmt_wpa(akm) || (akm & WPA_KEY_MGMT_WPA_NONE);
}
