
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *clean_val(char *val)
{
 char *p = val;

 while (isspace(*p))
  p++;
 val = p;
 if (!*val)
  return val;

 p = val + strlen(val) - 1;
 while (p > val && isspace(*p))
  p--;
 p[1] = '\0';

 if ((*val == '\"' && *p == '\"') || (*val == '\'' && *p == '\'')) {
  val++;
  *p-- = '\0';
 }
 return val;
}
