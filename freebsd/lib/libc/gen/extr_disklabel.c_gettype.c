
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ strcasecmp (char*,char const*) ;

__attribute__((used)) static int
gettype(char *t, const char **names)
{
 const char **nm;

 for (nm = names; *nm; nm++)
  if (strcasecmp(t, *nm) == 0)
   return (nm - names);
 if (isdigit((unsigned char)*t))
  return (atoi(t));
 return (0);
}
