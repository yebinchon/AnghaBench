
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*,char*) ;
 int str_clear_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char const*) ;

__attribute__((used)) static void write_str(FILE *f, const char *field, struct wpa_ssid *ssid)
{
 char *value = wpa_config_get(ssid, field);
 if (value == ((void*)0))
  return;
 fprintf(f, "\t%s=%s\n", field, value);
 str_clear_free(value);
}
