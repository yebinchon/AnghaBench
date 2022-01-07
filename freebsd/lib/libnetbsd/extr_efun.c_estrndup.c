
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int efunc (int,char*) ;
 char* strndup (char const*,size_t) ;
 int stub1 (int,char*) ;

char *
estrndup(const char *s, size_t len)
{
 char *d = strndup(s, len);
 if (d == ((void*)0))
  (*efunc)(1, "Cannot copy string");
 return d;
}
