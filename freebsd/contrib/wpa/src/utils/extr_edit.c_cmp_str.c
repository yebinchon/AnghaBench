
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_strcmp (char const*,char const*) ;

__attribute__((used)) static int cmp_str(const void *a, const void *b)
{
 return os_strcmp(* (const char **) a, * (const char **) b);
}
