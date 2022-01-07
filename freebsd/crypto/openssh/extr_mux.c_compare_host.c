
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
compare_host(const char *a, const char *b)
{
 if (a == ((void*)0) && b == ((void*)0))
  return 1;
 if (a == ((void*)0) || b == ((void*)0))
  return 0;
 return strcmp(a, b) == 0;
}
