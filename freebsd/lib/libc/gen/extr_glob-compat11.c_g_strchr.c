
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const wchar_t ;
typedef scalar_t__ Char ;



__attribute__((used)) static const Char *
g_strchr(const Char *str, wchar_t ch)
{

 do {
  if (*str == ch)
   return (str);
 } while (*str++);
 return (((void*)0));
}
