
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_FT_IEEE8021X_SHA384 ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 scalar_t__ wpa_key_mgmt_fils (int) ;
 scalar_t__ wpa_key_mgmt_sae (int) ;
 scalar_t__ wpa_key_mgmt_suite_b (int) ;

int wpa_use_akm_defined(int akmp)
{
 return akmp == WPA_KEY_MGMT_OSEN ||
  akmp == WPA_KEY_MGMT_OWE ||
  akmp == WPA_KEY_MGMT_DPP ||
  akmp == WPA_KEY_MGMT_FT_IEEE8021X_SHA384 ||
  wpa_key_mgmt_sae(akmp) ||
  wpa_key_mgmt_suite_b(akmp) ||
  wpa_key_mgmt_fils(akmp);
}
