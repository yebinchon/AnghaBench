
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
typedef int field ;
typedef int FILE ;


 int fprintf (int *,char*,char*,char*) ;
 int os_free (char*) ;
 int os_snprintf (char*,int,char*,int) ;
 scalar_t__ os_snprintf_error (int,int) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_wep_key(FILE *f, int idx, struct wpa_ssid *ssid)
{
 char field[20], *value;
 int res;

 res = os_snprintf(field, sizeof(field), "wep_key%d", idx);
 if (os_snprintf_error(sizeof(field), res))
  return;
 value = wpa_config_get(ssid, field);
 if (value) {
  fprintf(f, "\t%s=%s\n", field, value);
  os_free(value);
 }
}
