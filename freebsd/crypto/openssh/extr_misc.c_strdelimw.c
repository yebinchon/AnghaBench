
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strdelim_internal (char**,int ) ;

char *
strdelimw(char **s)
{
 return strdelim_internal(s, 0);
}
