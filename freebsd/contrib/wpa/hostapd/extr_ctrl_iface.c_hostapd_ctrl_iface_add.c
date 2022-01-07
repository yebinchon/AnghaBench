
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hapd_interfaces {int dummy; } ;


 int MSG_ERROR ;
 scalar_t__ hostapd_add_iface (struct hapd_interfaces*,char*) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int hostapd_ctrl_iface_add(struct hapd_interfaces *interfaces,
      char *buf)
{
 if (hostapd_add_iface(interfaces, buf) < 0) {
  wpa_printf(MSG_ERROR, "Adding interface %s failed", buf);
  return -1;
 }
 return 0;
}
