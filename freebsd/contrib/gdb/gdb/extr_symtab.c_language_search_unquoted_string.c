
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ la_language; } ;


 TYPE_1__* current_language ;
 scalar_t__ isalnum (char) ;
 scalar_t__ language_objc ;

__attribute__((used)) static char *
language_search_unquoted_string (char *text, char *p)
{
  for (; p > text; --p)
    {
      if (isalnum (p[-1]) || p[-1] == '_' || p[-1] == '\0')
 continue;
      else
 {
   if ((current_language->la_language == language_objc))
     {
       if (p[-1] == ':')
  continue;
       else if (p[-1] == '[' && (p[-2] == '-' || p[-2] == '+'))
  p -= 2;
       else if (p[-1] == ' ' || p[-1] == '(' || p[-1] == ')')
  {
    char *t = p;






    while (t > text)
      if (isalnum (t[-1]) || t[-1] == '_' ||
   t[-1] == ' ' || t[-1] == ':' ||
   t[-1] == '(' || t[-1] == ')')
        --t;
      else
        break;

    if (t[-1] == '[' && (t[-2] == '-' || t[-2] == '+'))
      p = t - 2;

  }
     }
   break;
 }
    }
  return p;
}
