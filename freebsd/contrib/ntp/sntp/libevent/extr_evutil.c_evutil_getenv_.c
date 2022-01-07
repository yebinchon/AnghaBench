
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ evutil_issetugid () ;
 char const* getenv (char const*) ;

const char *
evutil_getenv_(const char *varname)
{
 if (evutil_issetugid())
  return ((void*)0);

 return getenv(varname);
}
