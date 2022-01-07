
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enomem () ;
 char* strdup (char const*) ;

char *
estrdup(const char *str)
{
 char *p;

 if ((p = strdup(str)) == ((void*)0))
  enomem();
 return(p);
}
