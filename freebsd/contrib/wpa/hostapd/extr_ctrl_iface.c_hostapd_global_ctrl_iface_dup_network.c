
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int dummy; } ;
struct hapd_interfaces {int dummy; } ;


 int MSG_ERROR ;
 int hostapd_ctrl_iface_dup_param (struct hostapd_data*,struct hostapd_data*,char*) ;
 struct hostapd_data* hostapd_interfaces_get_hapd (struct hapd_interfaces*,char*) ;
 char* os_strchr (char*,char) ;
 int wpa_printf (int ,char*,char*) ;

__attribute__((used)) static int
hostapd_global_ctrl_iface_dup_network(struct hapd_interfaces *interfaces,
          char *cmd)
{
 char *p_start = cmd, *p_end;
 struct hostapd_data *src_hapd, *dst_hapd;



 p_end = os_strchr(p_start, ' ');
 if (!p_end) {
  wpa_printf(MSG_ERROR, "DUP: no src ifname found in cmd: '%s'",
      cmd);
  return -1;
 }

 *p_end = '\0';
 src_hapd = hostapd_interfaces_get_hapd(interfaces, p_start);
 if (!src_hapd) {
  wpa_printf(MSG_ERROR, "DUP: no src ifname found: '%s'",
      p_start);
  return -1;
 }

 p_start = p_end + 1;
 p_end = os_strchr(p_start, ' ');
 if (!p_end) {
  wpa_printf(MSG_ERROR, "DUP: no dst ifname found in cmd: '%s'",
      cmd);
  return -1;
 }

 *p_end = '\0';
 dst_hapd = hostapd_interfaces_get_hapd(interfaces, p_start);
 if (!dst_hapd) {
  wpa_printf(MSG_ERROR, "DUP: no dst ifname found: '%s'",
      p_start);
  return -1;
 }

 p_start = p_end + 1;
 return hostapd_ctrl_iface_dup_param(src_hapd, dst_hapd, p_start);
}
