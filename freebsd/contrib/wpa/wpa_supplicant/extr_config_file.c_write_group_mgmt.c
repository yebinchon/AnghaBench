
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int group_mgmt_cipher; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_group_mgmt(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (!ssid->group_mgmt_cipher)
  return;

 value = wpa_config_get(ssid, "group_mgmt");
 if (!value)
  return;
 if (value[0])
  fprintf(f, "\tgroup_mgmt=%s\n", value);
 os_free(value);
}
