
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efunc (int,char*) ;
 char* strdup (char const*) ;
 int stub1 (int,char*) ;

char *
estrdup(const char *s)
{
 char *d = strdup(s);
 if (d == ((void*)0))
  (*efunc)(1, "Cannot copy string");
 return d;
}
