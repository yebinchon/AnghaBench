
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char const*,int ) ;

int str_starts(const char *str, const char *start)
{
 return os_strncmp(str, start, os_strlen(start)) == 0;
}
