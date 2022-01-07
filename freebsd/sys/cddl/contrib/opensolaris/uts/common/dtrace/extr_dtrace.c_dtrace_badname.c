
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTRACE_ISALPHA (char) ;

__attribute__((used)) static int
dtrace_badname(const char *s)
{
 char c;

 if (s == ((void*)0) || (c = *s++) == '\0')
  return (0);

 if (!DTRACE_ISALPHA(c) && c != '-' && c != '_' && c != '.')
  return (1);

 while ((c = *s++) != '\0') {
  if (!DTRACE_ISALPHA(c) && (c < '0' || c > '9') &&
      c != '-' && c != '_' && c != '.' && c != '`')
   return (1);
 }

 return (0);
}
