
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {struct wpa_ssid* next; } ;
struct wpa_cred {struct wpa_cred* next; } ;
struct wpa_config {struct wpa_cred* cred; struct wpa_ssid* ssid; } ;
typedef int buf ;
typedef int FILE ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int os_free (struct wpa_config*) ;
 scalar_t__ os_strcmp (char*,char*) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 int strerror (int ) ;
 scalar_t__ wpa_config_add_prio_network (struct wpa_config*,struct wpa_ssid*) ;
 struct wpa_config* wpa_config_alloc_empty (int *,int *) ;
 int wpa_config_debug_dump_networks (struct wpa_config*) ;
 int wpa_config_free (struct wpa_config*) ;
 scalar_t__ wpa_config_get_line (char*,int,int *,int*,char**) ;
 scalar_t__ wpa_config_process_blob (struct wpa_config*,int *,int*,char*) ;
 scalar_t__ wpa_config_process_global (struct wpa_config*,char*,int) ;
 struct wpa_cred* wpa_config_read_cred (int *,int*,int ) ;
 struct wpa_ssid* wpa_config_read_network (int *,int*,int ) ;
 int wpa_printf (int ,char*,...) ;

struct wpa_config * wpa_config_read(const char *name, struct wpa_config *cfgp)
{
 FILE *f;
 char buf[512], *pos;
 int errors = 0, line = 0;
 struct wpa_ssid *ssid, *tail, *head;
 struct wpa_cred *cred, *cred_tail, *cred_head;
 struct wpa_config *config;
 int id = 0;
 int cred_id = 0;

 if (name == ((void*)0))
  return ((void*)0);
 if (cfgp)
  config = cfgp;
 else
  config = wpa_config_alloc_empty(((void*)0), ((void*)0));
 if (config == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to allocate config file "
      "structure");
  return ((void*)0);
 }
 tail = head = config->ssid;
 while (tail && tail->next)
  tail = tail->next;
 cred_tail = cred_head = config->cred;
 while (cred_tail && cred_tail->next)
  cred_tail = cred_tail->next;

 wpa_printf(MSG_DEBUG, "Reading configuration file '%s'", name);
 f = fopen(name, "r");
 if (f == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Failed to open config file '%s', "
      "error: %s", name, strerror(errno));
  if (config != cfgp)
   os_free(config);
  return ((void*)0);
 }

 while (wpa_config_get_line(buf, sizeof(buf), f, &line, &pos)) {
  if (os_strcmp(pos, "network={") == 0) {
   ssid = wpa_config_read_network(f, &line, id++);
   if (ssid == ((void*)0)) {
    wpa_printf(MSG_ERROR, "Line %d: failed to "
        "parse network block.", line);
    errors++;
    continue;
   }
   if (head == ((void*)0)) {
    head = tail = ssid;
   } else {
    tail->next = ssid;
    tail = ssid;
   }
   if (wpa_config_add_prio_network(config, ssid)) {
    wpa_printf(MSG_ERROR, "Line %d: failed to add "
        "network block to priority list.",
        line);
    errors++;
    continue;
   }
  } else if (os_strcmp(pos, "cred={") == 0) {
   cred = wpa_config_read_cred(f, &line, cred_id++);
   if (cred == ((void*)0)) {
    wpa_printf(MSG_ERROR, "Line %d: failed to "
        "parse cred block.", line);
    errors++;
    continue;
   }
   if (cred_head == ((void*)0)) {
    cred_head = cred_tail = cred;
   } else {
    cred_tail->next = cred;
    cred_tail = cred;
   }

  } else if (os_strncmp(pos, "blob-base64-", 12) == 0) {
   if (wpa_config_process_blob(config, f, &line, pos + 12)
       < 0) {
    wpa_printf(MSG_ERROR, "Line %d: failed to "
        "process blob.", line);
    errors++;
    continue;
   }

  } else if (wpa_config_process_global(config, pos, line) < 0) {
   wpa_printf(MSG_ERROR, "Line %d: Invalid configuration "
       "line '%s'.", line, pos);
   errors++;
   continue;
  }
 }

 fclose(f);

 config->ssid = head;
 wpa_config_debug_dump_networks(config);
 config->cred = cred_head;


 if (errors) {
  if (config != cfgp)
   wpa_config_free(config);
  config = ((void*)0);
  head = ((void*)0);
 }


 return config;
}
