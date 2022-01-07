
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PATH_MAX ;
 int _ENV_UTIL_COMPAT ;
 int _PATH_UTIL_COMPAT ;
 char* getenv (int ) ;
 int readlink (int ,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlcpy (char*,char*,int) ;
 char* strsep (char**,char*) ;

int
check_utility_compat(const char *utility)
{
 char buf[PATH_MAX];
 char *p, *bp;
 int len;

 if ((p = getenv(_ENV_UTIL_COMPAT)) != ((void*)0)) {
  strlcpy(buf, p, sizeof buf);
 } else {
  if ((len = readlink(_PATH_UTIL_COMPAT, buf, sizeof(buf) - 1)) < 0)
   return 0;
  buf[len] = '\0';
 }
 if (buf[0] == '\0')
  return 1;

 bp = buf;
 while ((p = strsep(&bp, ",")) != ((void*)0)) {
  if (strcmp(p, utility) == 0)
   return 1;
 }
 return 0;
}
