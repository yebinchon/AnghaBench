
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_FT ;
 int wpa_key_mgmt_ft (int) ;

__attribute__((used)) static inline int wpa_key_mgmt_only_ft(int akm)
{
 int ft = wpa_key_mgmt_ft(akm);
 akm &= ~WPA_KEY_MGMT_FT;
 return ft && !akm;
}
