
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,char*,char const*) ;

__attribute__((used)) static inline int
print_flag (const char *flag, bool *need_or, char *val)
{
 int res;
 res = sprintf (val, "%s%s", *need_or ? "|" : "", flag);

 *need_or |= 1;

 return res;
}
