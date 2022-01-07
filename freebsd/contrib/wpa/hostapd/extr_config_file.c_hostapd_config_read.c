
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_config {size_t num_bss; struct hostapd_bss_config** bss; struct hostapd_bss_config* last_bss; int * driver; } ;
struct hostapd_bss_config {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int MSG_ERROR ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ hostapd_config_check (struct hostapd_config*,int) ;
 struct hostapd_config* hostapd_config_defaults () ;
 scalar_t__ hostapd_config_fill (struct hostapd_config*,struct hostapd_bss_config*,char*,char*,int) ;
 int hostapd_config_free (struct hostapd_config*) ;
 int hostapd_set_security_params (struct hostapd_bss_config*,int) ;
 char* os_strchr (char*,char) ;
 int ** wpa_drivers ;
 int wpa_printf (int ,char*,...) ;

struct hostapd_config * hostapd_config_read(const char *fname)
{
 struct hostapd_config *conf;
 FILE *f;
 char buf[4096], *pos;
 int line = 0;
 int errors = 0;
 size_t i;

 f = fopen(fname, "r");
 if (f == ((void*)0)) {
  wpa_printf(MSG_ERROR, "Could not open configuration file '%s' "
      "for reading.", fname);
  return ((void*)0);
 }

 conf = hostapd_config_defaults();
 if (conf == ((void*)0)) {
  fclose(f);
  return ((void*)0);
 }


 conf->driver = wpa_drivers[0];
 if (conf->driver == ((void*)0)) {
  wpa_printf(MSG_ERROR, "No driver wrappers registered!");
  hostapd_config_free(conf);
  fclose(f);
  return ((void*)0);
 }

 conf->last_bss = conf->bss[0];

 while (fgets(buf, sizeof(buf), f)) {
  struct hostapd_bss_config *bss;

  bss = conf->last_bss;
  line++;

  if (buf[0] == '#')
   continue;
  pos = buf;
  while (*pos != '\0') {
   if (*pos == '\n') {
    *pos = '\0';
    break;
   }
   pos++;
  }
  if (buf[0] == '\0')
   continue;

  pos = os_strchr(buf, '=');
  if (pos == ((void*)0)) {
   wpa_printf(MSG_ERROR, "Line %d: invalid line '%s'",
       line, buf);
   errors++;
   continue;
  }
  *pos = '\0';
  pos++;
  errors += hostapd_config_fill(conf, bss, buf, pos, line);
 }

 fclose(f);

 for (i = 0; i < conf->num_bss; i++)
  hostapd_set_security_params(conf->bss[i], 1);

 if (hostapd_config_check(conf, 1))
  errors++;


 if (errors) {
  wpa_printf(MSG_ERROR, "%d errors found in configuration file "
      "'%s'", errors, fname);
  hostapd_config_free(conf);
  conf = ((void*)0);
 }


 return conf;
}
