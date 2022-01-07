
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char*,char*) ;

int
_rl_qsort_string_compare(char **s1, char **s2)
{
 return strcoll(*s1, *s2);
}
