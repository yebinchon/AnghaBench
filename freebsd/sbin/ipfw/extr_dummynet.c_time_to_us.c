
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long atol (char*) ;
 scalar_t__ isdigit (char const) ;
 int strcasecmp (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 int strtod (char*,int *) ;

__attribute__((used)) static long
time_to_us(const char *s)
{
 int i, dots = 0;
 int len = strlen(s);
 char strt[16]="", stru[16]="";

 if (len>15)
  return -1;
 for (i = 0; i<len && (isdigit(s[i]) || s[i]=='.') ; i++)
  if (s[i]=='.') {
   if (dots)
    return -1;
   else
    dots++;
  }

 if (!i)
  return -1;
 strncpy(strt, s, i);
 if (i<len)
  strcpy(stru, s+i);
 else
  strcpy(stru, "ms");

 if (!strcasecmp(stru, "us"))
  return atol(strt);
 if (!strcasecmp(stru, "ms"))
  return (strtod(strt, ((void*)0)) * 1000);
 if (!strcasecmp(stru, "s"))
  return (strtod(strt, ((void*)0))*1000000);

 return -1;
}
