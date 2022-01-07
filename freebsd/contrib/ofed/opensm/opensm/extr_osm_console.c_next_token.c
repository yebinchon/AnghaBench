
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strtok_r (int *,char*,char**) ;

__attribute__((used)) static char *next_token(char **p_last)
{
 return strtok_r(((void*)0), " \t\n\r", p_last);
}
