
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
sldns_is_last_of_string(const char* str)
{
 if(*str == 0) return 1;
 while(isspace((unsigned char)*str))
  str++;
 if(*str == 0) return 1;
 return 0;
}
