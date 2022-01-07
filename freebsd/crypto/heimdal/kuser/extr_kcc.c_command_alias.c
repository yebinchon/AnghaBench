
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
command_alias(const char *name)
{
    const char *aliases[] = {
 "kinit", "klist", "kswitch", "kgetcred", "kvno", "kdeltkt",
 "kdestroy", "kcpytkt", ((void*)0)
    }, **p = aliases;

    while (*p && strcmp(name, *p) != 0)
 p++;
    return *p != ((void*)0);
}
