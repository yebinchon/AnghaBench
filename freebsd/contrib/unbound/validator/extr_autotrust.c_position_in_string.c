
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 char* strstr (char*,char const*) ;

__attribute__((used)) static int
position_in_string(char *str, const char* sub)
{
 char* pos = strstr(str, sub);
 if(pos)
  return (int)(pos-str)+(int)strlen(sub);
 return -1;
}
