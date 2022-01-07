
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

int
str_is_ip6(const char* str)
{
 if(strchr(str, ':'))
  return 1;
 else return 0;
}
