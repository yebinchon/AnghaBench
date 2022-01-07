
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int txt ;
struct wps_er_ap {int location; int addr; int sid; } ;


 int MSG_DEBUG ;
 int inet_ntoa (int ) ;
 char* os_strstr (char*,char*) ;
 int uuid_bin2str (int ,char*,int) ;
 scalar_t__ uuid_str2bin (char*,int ) ;
 int wpa_printf (int ,char*,int ,int ,...) ;

__attribute__((used)) static int wps_er_get_sid(struct wps_er_ap *ap, char *sid)
{
 char *pos;
 char txt[100];

 if (!sid) {
  wpa_printf(MSG_DEBUG, "WPS ER: No SID received from %s (%s)",
      inet_ntoa(ap->addr), ap->location);
  return -1;
 }

 pos = os_strstr(sid, "uuid:");
 if (!pos) {
  wpa_printf(MSG_DEBUG, "WPS ER: Invalid SID received from "
      "%s (%s): '%s'", inet_ntoa(ap->addr), ap->location,
      sid);
  return -1;
 }

 pos += 5;
 if (uuid_str2bin(pos, ap->sid) < 0) {
  wpa_printf(MSG_DEBUG, "WPS ER: Invalid SID received from "
      "%s (%s): '%s'", inet_ntoa(ap->addr), ap->location,
      sid);
  return -1;
 }

 uuid_bin2str(ap->sid, txt, sizeof(txt));
 wpa_printf(MSG_DEBUG, "WPS ER: SID for subscription with %s (%s): %s",
     inet_ntoa(ap->addr), ap->location, txt);

 return 0;
}
