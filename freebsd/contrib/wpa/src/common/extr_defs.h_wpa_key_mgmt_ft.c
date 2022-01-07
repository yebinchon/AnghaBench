
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_FT ;

__attribute__((used)) static inline int wpa_key_mgmt_ft(int akm)
{
 return !!(akm & WPA_KEY_MGMT_FT);
}
