
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 scalar_t__ common_module_tests () ;
 scalar_t__ crypto_module_tests () ;
 scalar_t__ utils_module_tests () ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpas_blacklist_module_tests () ;
 scalar_t__ wps_module_tests () ;

int wpas_module_tests(void)
{
 int ret = 0;

 wpa_printf(MSG_INFO, "wpa_supplicant module tests");

 if (wpas_blacklist_module_tests() < 0)
  ret = -1;






 if (utils_module_tests() < 0)
  ret = -1;

 if (common_module_tests() < 0)
  ret = -1;

 if (crypto_module_tests() < 0)
  ret = -1;

 return ret;
}
