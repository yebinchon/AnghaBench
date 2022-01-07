
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_OWE ;
 scalar_t__ wpa_key_mgmt_fils (int) ;
 scalar_t__ wpa_key_mgmt_sae (int) ;
 scalar_t__ wpa_key_mgmt_wpa_ieee8021x (int) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (int) ;

__attribute__((used)) static inline int wpa_key_mgmt_wpa(int akm)
{
 return wpa_key_mgmt_wpa_ieee8021x(akm) ||
  wpa_key_mgmt_wpa_psk(akm) ||
  wpa_key_mgmt_fils(akm) ||
  wpa_key_mgmt_sae(akm) ||
  akm == WPA_KEY_MGMT_OWE ||
  akm == WPA_KEY_MGMT_DPP;
}
