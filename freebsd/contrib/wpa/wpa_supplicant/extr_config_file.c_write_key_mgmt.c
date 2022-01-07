
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ key_mgmt; } ;
typedef int FILE ;


 scalar_t__ DEFAULT_KEY_MGMT ;
 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_key_mgmt(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (ssid->key_mgmt == DEFAULT_KEY_MGMT)
  return;

 value = wpa_config_get(ssid, "key_mgmt");
 if (value == ((void*)0))
  return;
 if (value[0])
  fprintf(f, "\tkey_mgmt=%s\n", value);
 os_free(value);
}
