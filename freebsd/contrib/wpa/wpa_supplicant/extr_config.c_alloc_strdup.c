
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* os_strdup (char const*) ;

__attribute__((used)) static char * alloc_strdup(const char *str)
{
 if (str == ((void*)0))
  return ((void*)0);
 return os_strdup(str);
}
