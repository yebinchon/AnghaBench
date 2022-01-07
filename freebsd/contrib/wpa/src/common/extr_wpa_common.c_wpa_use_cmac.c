
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_KEY_MGMT_DPP ;
 int WPA_KEY_MGMT_OSEN ;
 int WPA_KEY_MGMT_OWE ;
 scalar_t__ wpa_key_mgmt_ft (int) ;
 scalar_t__ wpa_key_mgmt_sae (int) ;
 scalar_t__ wpa_key_mgmt_sha256 (int) ;
 scalar_t__ wpa_key_mgmt_suite_b (int) ;

int wpa_use_cmac(int akmp)
{
 return akmp == WPA_KEY_MGMT_OSEN ||
  akmp == WPA_KEY_MGMT_OWE ||
  akmp == WPA_KEY_MGMT_DPP ||
  wpa_key_mgmt_ft(akmp) ||
  wpa_key_mgmt_sha256(akmp) ||
  wpa_key_mgmt_sae(akmp) ||
  wpa_key_mgmt_suite_b(akmp);
}
