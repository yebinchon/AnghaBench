
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 int strlen (char const*) ;

__attribute__((used)) static int
is_valid_number(const char *s)
{
 int i, dots_found = 0;
 int len = strlen(s);

 for (i = 0; i<len; ++i)
  if (!isdigit(s[i]) && (s[i] !='.' || ++dots_found > 1))
   return 0;
 return 1;
}
