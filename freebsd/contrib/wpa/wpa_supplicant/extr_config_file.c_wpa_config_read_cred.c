
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {int id; int sim_num; } ;
typedef int buf ;
typedef int FILE ;


 int DEFAULT_USER_SELECTED_SIM ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 char* os_strchr (char*,char) ;
 scalar_t__ os_strcmp (char*,char*) ;
 struct wpa_cred* os_zalloc (int) ;
 int wpa_config_free_cred (struct wpa_cred*) ;
 scalar_t__ wpa_config_get_line (char*,int,int *,int*,char**) ;
 scalar_t__ wpa_config_set_cred (struct wpa_cred*,char*,char*,int) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static struct wpa_cred * wpa_config_read_cred(FILE *f, int *line, int id)
{
 struct wpa_cred *cred;
 int errors = 0, end = 0;
 char buf[256], *pos, *pos2;

 wpa_printf(MSG_MSGDUMP, "Line: %d - start of a new cred block", *line);
 cred = os_zalloc(sizeof(*cred));
 if (cred == ((void*)0))
  return ((void*)0);
 cred->id = id;
 cred->sim_num = DEFAULT_USER_SELECTED_SIM;

 while (wpa_config_get_line(buf, sizeof(buf), f, line, &pos)) {
  if (os_strcmp(pos, "}") == 0) {
   end = 1;
   break;
  }

  pos2 = os_strchr(pos, '=');
  if (pos2 == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Line %d: Invalid cred line "
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

  if (wpa_config_set_cred(cred, pos, pos2, *line) < 0)
   errors++;
 }

 if (!end) {
  wpa_printf(MSG_ERROR, "Line %d: cred block was not "
      "terminated properly.", *line);
  errors++;
 }

 if (errors) {
  wpa_config_free_cred(cred);
  cred = ((void*)0);
 }

 return cred;
}
