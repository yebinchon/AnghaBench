
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int wpa_printf (int ,char*) ;

int hapd_module_tests(void)
{
 wpa_printf(MSG_INFO, "hostapd module tests");
 return 0;
}
