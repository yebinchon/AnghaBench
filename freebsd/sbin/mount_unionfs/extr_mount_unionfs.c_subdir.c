
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
subdir(const char *p, const char *dir)
{
 int l;

 l = strlen(dir);
 if (l <= 1)
  return (1);

 if ((strncmp(p, dir, l) == 0) && (p[l] == '/' || p[l] == '\0'))
  return (1);

 return (0);
}
