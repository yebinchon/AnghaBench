
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ key_mgmt; int passphrase; int psk_set; scalar_t__ temporary; struct wpa_ssid* next; } ;
struct wpa_cred {scalar_t__ temporary; struct wpa_cred* next; } ;
struct wpa_config_blob {struct wpa_config_blob* next; } ;
struct wpa_config {struct wpa_config_blob* blobs; struct wpa_ssid* ssid; struct wpa_cred* cred; } ;
typedef int FILE ;


 int MSG_DEBUG ;
 int S_IRGRP ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWUSR ;
 scalar_t__ WPA_KEY_MGMT_WPS ;
 int chmod (char*,int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int os_fdatasync (int *) ;
 int os_free (char*) ;
 char* os_malloc (int) ;
 int os_snprintf (char*,int,char*,char const*) ;
 int os_strlen (char const*) ;
 scalar_t__ rename (char*,char const*) ;
 int wpa_config_write_blob (int *,struct wpa_config_blob*) ;
 int wpa_config_write_cred (int *,struct wpa_cred*) ;
 int wpa_config_write_global (int *,struct wpa_config*) ;
 int wpa_config_write_network (int *,struct wpa_ssid*) ;
 scalar_t__ wpa_key_mgmt_wpa_psk (scalar_t__) ;
 int wpa_printf (int ,char*,char const*,...) ;

int wpa_config_write(const char *name, struct wpa_config *config)
{

 FILE *f;
 struct wpa_ssid *ssid;
 struct wpa_cred *cred;

 struct wpa_config_blob *blob;

 int ret = 0;
 const char *orig_name = name;
 int tmp_len = os_strlen(name) + 5;
 char *tmp_name = os_malloc(tmp_len);

 if (tmp_name) {
  os_snprintf(tmp_name, tmp_len, "%s.tmp", name);
  name = tmp_name;
 }

 wpa_printf(MSG_DEBUG, "Writing configuration file '%s'", name);

 f = fopen(name, "w");
 if (f == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "Failed to open '%s' for writing", name);
  os_free(tmp_name);
  return -1;
 }

 wpa_config_write_global(f, config);

 for (cred = config->cred; cred; cred = cred->next) {
  if (cred->temporary)
   continue;
  fprintf(f, "\ncred={\n");
  wpa_config_write_cred(f, cred);
  fprintf(f, "}\n");
 }

 for (ssid = config->ssid; ssid; ssid = ssid->next) {
  if (ssid->key_mgmt == WPA_KEY_MGMT_WPS || ssid->temporary)
   continue;
  if (wpa_key_mgmt_wpa_psk(ssid->key_mgmt) && !ssid->psk_set &&
      !ssid->passphrase)
   continue;
  fprintf(f, "\nnetwork={\n");
  wpa_config_write_network(f, ssid);
  fprintf(f, "}\n");
 }


 for (blob = config->blobs; blob; blob = blob->next) {
  ret = wpa_config_write_blob(f, blob);
  if (ret)
   break;
 }


 os_fdatasync(f);

 fclose(f);

 if (tmp_name) {
  int chmod_ret = 0;





  if (chmod_ret != 0 || rename(tmp_name, orig_name) != 0)
   ret = -1;

  os_free(tmp_name);
 }

 wpa_printf(MSG_DEBUG, "Configuration file '%s' written %ssuccessfully",
     orig_name, ret ? "un" : "");
 return ret;



}
