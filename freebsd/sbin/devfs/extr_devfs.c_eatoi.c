
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 int errx (int,char*,char const*) ;
 long strtol (char const*,char**,int) ;

int
eatoi(const char *s)
{
 char *cp;
 long l;

 l = strtol(s, &cp, 10);
 if (l > INT_MAX || *cp != '\0')
  errx(1, "error converting to integer: %s", s);
 return ((int)l);
}
