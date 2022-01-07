
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int has_newline(const char *str)
{
 while (*str) {
  if (*str == '\n' || *str == '\r')
   return 1;
  str++;
 }
 return 0;
}
