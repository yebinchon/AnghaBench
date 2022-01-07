
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char*,char const*) ;
 int errx (int,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;

char *
catopt(char *s0, const char *s1)
{
 char *cp;

 if (s1 == ((void*)0) || *s1 == '\0')
  return (s0);

 if (s0 && *s0) {
  if (asprintf(&cp, "%s,%s", s0, s1) == -1)
   errx(1, "asprintf failed");
 } else
  cp = strdup(s1);

 if (s0)
  free(s0);
 return (cp);
}
