
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int ifconfig_helper (char const*,int) ;
 int wpa_printf (int ,char*,char const*) ;

int ifconfig_up(const char *if_name)
{
 wpa_printf(MSG_DEBUG, "VLAN: Set interface %s up", if_name);
 return ifconfig_helper(if_name, 1);
}
