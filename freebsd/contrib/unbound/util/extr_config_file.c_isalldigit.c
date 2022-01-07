
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (unsigned char) ;

__attribute__((used)) static int isalldigit(const char* str, size_t l)
{
 size_t i;
 for(i=0; i<l; i++)
  if(!isdigit((unsigned char)str[i]))
   return 0;
 return 1;
}
