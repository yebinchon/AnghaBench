
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* rk_UNCONST (char const*) ;

__attribute__((used)) static char *
builtin_i18n(const char *str)
{
    return rk_UNCONST(str);
}
