
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,char const*) ;
 scalar_t__ malloc (scalar_t__) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *tostring(const char *s)
{
 char *p;

 p = (char *) malloc(strlen(s)+1);
 if (p == ((void*)0))
  FATAL("out of space in tostring on %s", s);
 strcpy(p, s);
 return(p);
}
