
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

int
cfg_count_numbers(const char* s)
{



 int num = 0;
 while(*s) {
  while(*s && isspace((unsigned char)*s))
   s++;
  if(!*s)
   break;
  if(*s == '-')
   s++;
  if(!*s)
   return 0;
  if(!isdigit((unsigned char)*s))
   return 0;
  while(*s && isdigit((unsigned char)*s))
   s++;
  num++;
 }
 return num;
}
