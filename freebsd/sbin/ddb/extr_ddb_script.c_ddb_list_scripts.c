
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ ENOMEM ;
 int EX_DATAERR ;
 int EX_OSERR ;
 char const* SYSCTL_SCRIPTS ;
 int bzero (char*,size_t) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strsep (char**,char*) ;
 int sysctlbyname (char const*,char*,size_t*,int *,int ) ;

__attribute__((used)) static void
ddb_list_scripts(const char *scriptname)
{
 char *buffer, *line, *nextline;
 char *line_script, *line_scriptname;
 size_t buflen, len;
 int ret;

repeat:
 if (sysctlbyname(SYSCTL_SCRIPTS, ((void*)0), &buflen, ((void*)0), 0) < 0)
  err(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
 if (buflen == 0)
  return;
 buffer = malloc(buflen);
 if (buffer == ((void*)0))
  err(EX_OSERR, "malloc");
 bzero(buffer, buflen);
 len = buflen;
 ret = sysctlbyname(SYSCTL_SCRIPTS, buffer, &len, ((void*)0), 0);
 if (ret < 0 && errno != ENOMEM)
  err(EX_OSERR, "sysctl: %s", SYSCTL_SCRIPTS);
 if (ret < 0) {
  free(buffer);
  goto repeat;
 }






 if (scriptname == ((void*)0)) {
  printf("%s", buffer);
  free(buffer);
  return;
 }





 nextline = buffer;
 while ((line = strsep(&nextline, "\n")) != ((void*)0)) {
  line_script = line;
  line_scriptname = strsep(&line_script, "=");
  if (line_script == ((void*)0))
   continue;
  if (strcmp(scriptname, line_scriptname) != 0)
   continue;
  printf("%s\n", line_script);
  break;
 }
 if (line == ((void*)0)) {
  errno = ENOENT;
  err(EX_DATAERR, "%s", scriptname);
 }
 free(buffer);
}
