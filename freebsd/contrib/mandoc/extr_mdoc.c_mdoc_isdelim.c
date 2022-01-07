
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mdelim { ____Placeholder_mdelim } mdelim ;


 int DELIM_CLOSE ;
 int DELIM_MIDDLE ;
 int DELIM_NONE ;
 int DELIM_OPEN ;
 scalar_t__ strcmp (char const*,char*) ;

enum mdelim
mdoc_isdelim(const char *p)
{

 if ('\0' == p[0])
  return DELIM_NONE;

 if ('\0' == p[1])
  switch (p[0]) {
  case '(':
  case '[':
   return DELIM_OPEN;
  case '|':
   return DELIM_MIDDLE;
  case '.':
  case ',':
  case ';':
  case ':':
  case '?':
  case '!':
  case ')':
  case ']':
   return DELIM_CLOSE;
  default:
   return DELIM_NONE;
  }

 if ('\\' != p[0])
  return DELIM_NONE;

 if (0 == strcmp(p + 1, "."))
  return DELIM_CLOSE;
 if (0 == strcmp(p + 1, "fR|\\fP"))
  return DELIM_MIDDLE;

 return DELIM_NONE;
}
