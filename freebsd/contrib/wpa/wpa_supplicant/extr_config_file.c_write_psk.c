
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ mem_only_psk; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_psk(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (ssid->mem_only_psk)
  return;

 value = wpa_config_get(ssid, "psk");
 if (value == ((void*)0))
  return;
 fprintf(f, "\tpsk=%s\n", value);
 os_free(value);
}
