
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ pairwise_cipher; } ;
typedef int FILE ;


 scalar_t__ DEFAULT_PAIRWISE ;
 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_pairwise(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (ssid->pairwise_cipher == DEFAULT_PAIRWISE)
  return;

 value = wpa_config_get(ssid, "pairwise");
 if (value == ((void*)0))
  return;
 if (value[0])
  fprintf(f, "\tpairwise=%s\n", value);
 os_free(value);
}
