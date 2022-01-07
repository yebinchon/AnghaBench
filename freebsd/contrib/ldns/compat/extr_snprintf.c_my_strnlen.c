
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
my_strnlen(const char* s, int max)
{
 int i;
 for(i=0; i<max; i++)
  if(s[i]==0)
   return i;
 return max;
}
