
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
atoi(const char *str)
{
 return (int)strtol(str, (char **)((void*)0), 10);
}
