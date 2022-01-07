
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fatal (char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
copy(char *s)
{
 char *p;

 p = strdup(s);
 if (p == ((void*)0))
  fatal("Ran out of memory.");
 return p;
}
