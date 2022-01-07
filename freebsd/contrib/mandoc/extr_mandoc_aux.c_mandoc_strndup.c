
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 int err (int,int *) ;
 char* strndup (char const*,size_t) ;

char *
mandoc_strndup(const char *ptr, size_t sz)
{
 char *p;

 p = strndup(ptr, sz);
 if (p == ((void*)0))
  err((int)MANDOCLEVEL_SYSERR, ((void*)0));
 return p;
}
