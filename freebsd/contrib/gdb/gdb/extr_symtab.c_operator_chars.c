
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,...) ;
 scalar_t__ isalnum (char) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ strncmp (char*,char*,int) ;

char *
operator_chars (char *p, char **end)
{
  *end = "";
  if (strncmp (p, "operator", 8))
    return *end;
  p += 8;



  if (isalpha (*p) || *p == '_' || *p == '$' || *p == '\0')
    return *end;


  while (*p == ' ' || *p == '\t')
    p++;



  if (isalpha (*p) || *p == '_' || *p == '$')
    {
      char *q = p + 1;
      while (isalnum (*q) || *q == '_' || *q == '$')
 q++;
      *end = q;
      return p;
    }

  while (*p)
    switch (*p)
      {
      case '\\':
 if (p[1] == '*')
   {
     if (p[2] == '=')
       *end = p + 3;
     else
       *end = p + 2;
     return p;
   }
 else if (p[1] == '[')
   {
     if (p[2] == ']')
       error ("mismatched quoting on brackets, try 'operator\\[\\]'");
     else if (p[2] == '\\' && p[3] == ']')
       {
  *end = p + 4;
  return p;
       }
     else
       error ("nothing is allowed between '[' and ']'");
   }
 else
   {

     p++;
     continue;
   }
 break;
      case '!':
      case '=':
      case '*':
      case '/':
      case '%':
      case '^':
 if (p[1] == '=')
   *end = p + 2;
 else
   *end = p + 1;
 return p;
      case '<':
      case '>':
      case '+':
      case '-':
      case '&':
      case '|':
 if (p[0] == '-' && p[1] == '>')
   {

     if (p[2] == '*')
       {
  *end = p + 3;
  return p;
       }
     else if (p[2] == '\\')
       {
  *end = p + 4;
  return p;
       }
     else
       {
  *end = p + 2;
  return p;
       }
   }
 if (p[1] == '=' || p[1] == p[0])
   *end = p + 2;
 else
   *end = p + 1;
 return p;
      case '~':
      case ',':
 *end = p + 1;
 return p;
      case '(':
 if (p[1] != ')')
   error ("`operator ()' must be specified without whitespace in `()'");
 *end = p + 2;
 return p;
      case '?':
 if (p[1] != ':')
   error ("`operator ?:' must be specified without whitespace in `?:'");
 *end = p + 2;
 return p;
      case '[':
 if (p[1] != ']')
   error ("`operator []' must be specified without whitespace in `[]'");
 *end = p + 2;
 return p;
      default:
 error ("`operator %s' not supported", p);
 break;
      }

  *end = "";
  return *end;
}
