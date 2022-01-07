
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* strdup (char const*) ;

char *
estrdup(const char *s)
{
 char *p;

 p = strdup(s);
 if (p == ((void*)0))
  err(1, "strdup failed");
 return (p);
}
