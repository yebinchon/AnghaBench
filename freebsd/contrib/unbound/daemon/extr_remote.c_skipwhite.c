
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char*
skipwhite(char* str)
{

 while( isspace((unsigned char)*str) )
  str++;
 return str;
}
