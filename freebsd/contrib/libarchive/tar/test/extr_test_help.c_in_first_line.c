
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
in_first_line(const char *p, const char *substring)
{
 size_t l = strlen(substring);

 while (*p != '\0' && *p != '\n') {
  if (memcmp(p, substring, l) == 0)
   return (1);
  ++p;
 }
 return (0);
}
