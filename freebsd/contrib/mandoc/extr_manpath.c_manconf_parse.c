
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manconf {int manpath; } ;


 char* MAN_CONF_FILE ;
 char* getenv (char*) ;
 int manconf_file (struct manconf*,char const*) ;
 int manpath_parseline (int *,char*,char) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

void
manconf_parse(struct manconf *conf, const char *file,
  char *defp, char *auxp)
{
 char *insert;


 manpath_parseline(&conf->manpath, auxp, 'm');


 if (((void*)0) != defp) {
  manpath_parseline(&conf->manpath, defp, 'M');
  return;
 }


 defp = getenv("MANPATH");
 if (((void*)0) == file)
  file = MAN_CONF_FILE;


 if (((void*)0) == defp || '\0' == defp[0]) {
  manconf_file(conf, file);
  return;
 }


 if (':' == defp[0]) {
  manconf_file(conf, file);
  manpath_parseline(&conf->manpath, defp, '\0');
  return;
 }


 if (':' == defp[strlen(defp) - 1]) {
  manpath_parseline(&conf->manpath, defp, '\0');
  manconf_file(conf, file);
  return;
 }


 insert = strstr(defp, "::");
 if (((void*)0) != insert) {
  *insert++ = '\0';
  manpath_parseline(&conf->manpath, defp, '\0');
  manconf_file(conf, file);
  manpath_parseline(&conf->manpath, insert + 1, '\0');
  return;
 }


 manpath_parseline(&conf->manpath, defp, '\0');
}
