
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
number_of_colons(const char *str)
{
 int count = 0;

 while (*str != '\0') {
  if (*str == ':')
   count++;

  str++;
 }

 return (count);
}
