
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FILS_SHA384 ;
 int WPA_KEY_MGMT_FT_FILS_SHA256 ;
 int WPA_KEY_MGMT_FT_FILS_SHA384 ;

__attribute__((used)) static inline int wpa_key_mgmt_fils(int akm)
{
 return !!(akm & (WPA_KEY_MGMT_FILS_SHA256 |
    WPA_KEY_MGMT_FILS_SHA384 |
    WPA_KEY_MGMT_FT_FILS_SHA256 |
    WPA_KEY_MGMT_FT_FILS_SHA384));
}
