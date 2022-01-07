
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,scalar_t__) ;
 int warnx (char*,char const*,char const*) ;

int
_substrcmp(const char *str1, const char* str2)
{

 if (strncmp(str1, str2, strlen(str1)) != 0)
  return 1;

 if (strlen(str1) != strlen(str2))
  warnx("DEPRECATED: '%s' matched '%s' as a sub-string",
      str1, str2);
 return 0;
}
