
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t
__strleneq(const char *str)
{
 const char *s;

 for (s = str; *s != '\0'; ++s)
  if (*s == '=')
   return (0);

 return (s - str);
}
