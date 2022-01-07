
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 scalar_t__ gas_tests () ;
 scalar_t__ ieee802_11_parse_tests () ;
 scalar_t__ rsn_ie_parse_tests () ;
 scalar_t__ sae_tests () ;
 int wpa_printf (int ,char*) ;

int common_module_tests(void)
{
 int ret = 0;

 wpa_printf(MSG_INFO, "common module tests");

 if (ieee802_11_parse_tests() < 0 ||
     gas_tests() < 0 ||
     sae_tests() < 0 ||
     rsn_ie_parse_tests() < 0)
  ret = -1;

 return ret;
}
