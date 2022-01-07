
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char
get_negsign(int negative, int plus, int space)
{
 if(negative)
  return '-';
 if(plus)
  return '+';
 if(space)
  return ' ';
 return 0;
}
