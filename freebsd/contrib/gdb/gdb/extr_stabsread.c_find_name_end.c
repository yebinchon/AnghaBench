
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
find_name_end (char *name)
{
  char *s = name;
  if (s[0] == '-' || *s == '+')
    {

      if (s[1] != '[')
 {
   error ("invalid symbol name \"%s\"", name);
 }
      s = strchr (s, ']');
      if (s == ((void*)0))
 {
   error ("invalid symbol name \"%s\"", name);
 }
      return strchr (s, ':');
    }
  else
    {
      return strchr (s, ':');
    }
}
