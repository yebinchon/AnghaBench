
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 char* memcpy (char*,char const*,size_t) ;
 size_t strnlen (char const*,unsigned long) ;

__attribute__((used)) static char *dupstr(const char *str)
{
 char *dup;
 size_t len;

 if (!str)
  return ((void*)0);


 len = strnlen(str, 4096ul);

 dup = malloc(len + 1);
 if (!dup)
  return ((void*)0);

 dup[len] = 0;

 return memcpy(dup, str, len);
}
