
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MANDOCLEVEL_SYSERR ;
 int err (int,int *) ;
 char* strdup (char const*) ;

char *
mandoc_strdup(const char *ptr)
{
 char *p;

 p = strdup(ptr);
 if (p == ((void*)0))
  err((int)MANDOCLEVEL_SYSERR, ((void*)0));
 return p;
}
