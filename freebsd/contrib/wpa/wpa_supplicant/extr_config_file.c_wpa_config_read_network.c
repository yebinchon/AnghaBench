
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int id; int psk_list; } ;
typedef int buf ;
typedef int FILE ;


 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int dl_list_init (int *) ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 struct wpa_ssid* os_zalloc (int) ;
 int wpa_config_free_ssid (struct wpa_ssid*) ;
 scalar_t__ wpa_config_get_line (char*,int,int *,int*,char**) ;
 scalar_t__ wpa_config_set (struct wpa_ssid*,char*,char*,int) ;
 int wpa_config_set_network_defaults (struct wpa_ssid*) ;
 scalar_t__ wpa_config_validate_network (struct wpa_ssid*,int) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static struct wpa_ssid * wpa_config_read_network(FILE *f, int *line, int id)
{
 struct wpa_ssid *ssid;
 int errors = 0, end = 0;
 char buf[2000], *pos, *pos2;

 wpa_printf(MSG_MSGDUMP, "Line: %d - start of a new network block",
     *line);
 ssid = os_zalloc(sizeof(*ssid));
 if (ssid == ((void*)0))
  return ((void*)0);
 dl_list_init(&ssid->psk_list);
 ssid->id = id;

 wpa_config_set_network_defaults(ssid);

 while (wpa_config_get_line(buf, sizeof(buf), f, line, &pos)) {
  if (os_strcmp(pos, "}") == 0) {
   end = 1;
   break;
  }

  pos2 = os_strchr(pos, '=');
  if (pos2 == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Line %d: Invalid SSID line "
       "'%s'.", *line, pos);
   errors++;
   continue;
  }

  *pos2++ = '\0';
  if (*pos2 == '"') {
   if (os_strchr(pos2 + 1, '"') == ((void*)0)) {
    wpa_printf(MSG_ERROR, "Line %d: invalid "
        "quotation '%s'.", *line, pos2);
    errors++;
    continue;
   }
  }

  if (wpa_config_set(ssid, pos, pos2, *line) < 0)
   errors++;
 }

 if (!end) {
  wpa_printf(MSG_ERROR, "Line %d: network block was not "
      "terminated properly.", *line);
  errors++;
 }

 errors += wpa_config_validate_network(ssid, *line);

 if (errors) {
  wpa_config_free_ssid(ssid);
  ssid = ((void*)0);
 }

 return ssid;
}
