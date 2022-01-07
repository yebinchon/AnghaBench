
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct obstack {int dummy; } ;


 scalar_t__ obstack_alloc (struct obstack*,int) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

char *
obconcat (struct obstack *obstackp, const char *s1, const char *s2,
   const char *s3)
{
  int len = strlen (s1) + strlen (s2) + strlen (s3) + 1;
  char *val = (char *) obstack_alloc (obstackp, len);
  strcpy (val, s1);
  strcat (val, s2);
  strcat (val, s3);
  return val;
}
