
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_bssid_hint(FILE *f, struct wpa_ssid *ssid)
{
 char *value = wpa_config_get(ssid, "bssid_hint");

 if (!value)
  return;
 fprintf(f, "\tbssid_hint=%s\n", value);
 os_free(value);
}
