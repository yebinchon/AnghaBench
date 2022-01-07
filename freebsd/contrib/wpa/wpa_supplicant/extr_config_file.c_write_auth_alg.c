
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ auth_alg; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_auth_alg(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (ssid->auth_alg == 0)
  return;

 value = wpa_config_get(ssid, "auth_alg");
 if (value == ((void*)0))
  return;
 if (value[0])
  fprintf(f, "\tauth_alg=%s\n", value);
 os_free(value);
}
