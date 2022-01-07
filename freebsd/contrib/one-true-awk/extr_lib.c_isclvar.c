
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 scalar_t__ isalnum (int ) ;
 int isalpha (int ) ;

int isclvar(const char *s)
{
 const char *os = s;

 if (!isalpha((uschar) *s) && *s != '_')
  return 0;
 for ( ; *s; s++)
  if (!(isalnum((uschar) *s) || *s == '_'))
   break;
 return *s == '=' && s > os;
}
