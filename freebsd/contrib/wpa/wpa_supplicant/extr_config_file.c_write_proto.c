
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ssid {scalar_t__ proto; } ;
typedef int FILE ;


 scalar_t__ DEFAULT_PROTO ;
 int fprintf (int *,char*,char*) ;
 int os_free (char*) ;
 char* wpa_config_get (struct wpa_ssid*,char*) ;

__attribute__((used)) static void write_proto(FILE *f, struct wpa_ssid *ssid)
{
 char *value;

 if (ssid->proto == DEFAULT_PROTO)
  return;

 value = wpa_config_get(ssid, "proto");
 if (value == ((void*)0))
  return;
 if (value[0])
  fprintf(f, "\tproto=%s\n", value);
 os_free(value);
}
