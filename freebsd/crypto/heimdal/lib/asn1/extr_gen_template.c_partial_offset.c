
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ asprintf (char**,char*,char const*,char const*) ;
 int errx (int,char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char *
partial_offset(const char *basetype, const char *name, int need_offset)
{
    char *str;
    if (name == ((void*)0) || need_offset == 0)
 return strdup("0");
    if (asprintf(&str, "offsetof(struct %s, %s)", basetype, name) < 0 || str == ((void*)0))
 errx(1, "malloc");
    return str;
}
