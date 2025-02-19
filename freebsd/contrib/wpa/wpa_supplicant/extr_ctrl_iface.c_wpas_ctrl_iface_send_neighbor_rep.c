
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_ssid_value {int dummy; } ;


 int MSG_ERROR ;
 char* os_strchr (char*,char) ;
 char* os_strstr (char*,char*) ;
 scalar_t__ ssid_parse (char*,struct wpa_ssid_value*) ;
 int wpa_printf (int ,char*) ;
 int wpas_ctrl_neighbor_rep_cb ;
 int wpas_rrm_send_neighbor_rep_request (struct wpa_supplicant*,struct wpa_ssid_value*,int,int,int ,struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_ctrl_iface_send_neighbor_rep(struct wpa_supplicant *wpa_s,
          char *cmd)
{
 struct wpa_ssid_value ssid, *ssid_p = ((void*)0);
 int ret, lci = 0, civic = 0;
 char *ssid_s;

 ssid_s = os_strstr(cmd, "ssid=");
 if (ssid_s) {
  if (ssid_parse(ssid_s + 5, &ssid)) {
   wpa_printf(MSG_ERROR,
       "CTRL: Send Neighbor Report: bad SSID");
   return -1;
  }

  ssid_p = &ssid;





  cmd = os_strchr(ssid_s + 6, ssid_s[5] == '"' ? '"' : ' ');
  if (cmd)
   cmd++;

 }

 if (cmd && os_strstr(cmd, "lci"))
  lci = 1;

 if (cmd && os_strstr(cmd, "civic"))
  civic = 1;

 ret = wpas_rrm_send_neighbor_rep_request(wpa_s, ssid_p, lci, civic,
       wpas_ctrl_neighbor_rep_cb,
       wpa_s);

 return ret;
}
