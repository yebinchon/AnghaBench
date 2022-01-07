
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_attr_parse_tests () ;

int wps_module_tests(void)
{
 int ret = 0;

 wpa_printf(MSG_INFO, "WPS module tests");

 if (wps_attr_parse_tests() < 0)
  ret = -1;

 return ret;
}
