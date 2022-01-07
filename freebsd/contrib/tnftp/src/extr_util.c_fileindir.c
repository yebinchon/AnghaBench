
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parentdirbuf ;


 int PATH_MAX ;
 char* dirname (char*) ;
 int * realpath (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,size_t) ;
 int warn (char*,char*) ;

int
fileindir(const char *file, const char *dir)
{
 char parentdirbuf[PATH_MAX+1], *parentdir;
 char realdir[PATH_MAX+1];
 size_t dirlen;


 (void)strlcpy(parentdirbuf, file, sizeof(parentdirbuf));
 parentdir = dirname(parentdirbuf);
 if (strcmp(parentdir, ".") == 0)
  return 1;


 if (realpath(parentdir, realdir) == ((void*)0)) {
  warn("Unable to determine real path of `%s'", parentdir);
  return 0;
 }
 if (realdir[0] != '/')
  return 1;
 dirlen = strlen(dir);
 if (strncmp(realdir, dir, dirlen) == 0 &&
     (realdir[dirlen] == '/' || realdir[dirlen] == '\0'))
  return 1;
 return 0;
}
