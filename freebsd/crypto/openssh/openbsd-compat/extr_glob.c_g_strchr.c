
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;



__attribute__((used)) static Char *
g_strchr(const Char *str, int ch)
{
 do {
  if (*str == ch)
   return ((Char *)str);
 } while (*str++);
 return (((void*)0));
}
