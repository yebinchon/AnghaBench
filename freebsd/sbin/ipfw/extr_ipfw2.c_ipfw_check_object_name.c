
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 int strlen (char const*) ;

int
ipfw_check_object_name(const char *name)
{
 int c, i, l;






 l = strlen(name);
 if (l == 0 || l >= 64)
  return (EINVAL);
 for (i = 0; i < l; i++) {
  c = name[i];
  if (isalpha(c) || isdigit(c) || c == '_' ||
      c == '-' || c == '.')
   continue;
  return (EINVAL);
 }
 return (0);
}
