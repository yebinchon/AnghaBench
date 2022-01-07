
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int conf; } ;
struct wpa_ssid {int dummy; } ;


 int MSG_DEBUG ;
 int atoi (char*) ;
 char* os_strchr (char*,char) ;
 int os_strlen (char*) ;
 struct wpa_ssid* wpa_config_get_network (int ,int) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wpa_supplicant_ctrl_iface_ctrl_rsp_handle (struct wpa_supplicant*,struct wpa_ssid*,char*,char*) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_ctrl_rsp(struct wpa_supplicant *wpa_s,
           char *rsp)
{
 wpa_printf(MSG_DEBUG, "CTRL_IFACE: 802.1X not included");
 return -1;

}
