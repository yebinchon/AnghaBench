
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int ifconfig_helper (char const*,int ) ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static int ifconfig_down(const char *if_name)
{
 wpa_printf(MSG_DEBUG, "VLAN: Set interface %s down", if_name);
 return ifconfig_helper(if_name, 0);
}
