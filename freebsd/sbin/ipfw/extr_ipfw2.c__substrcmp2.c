
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;
 int warnx (char*,char const*,char const*) ;

int
_substrcmp2(const char *str1, const char* str2, const char* str3)
{

 if (strncmp(str1, str2, strlen(str2)) != 0)
  return 1;

 if (strcmp(str1, str3) != 0)
  warnx("DEPRECATED: '%s' matched '%s'",
      str1, str3);
 return 0;
}
