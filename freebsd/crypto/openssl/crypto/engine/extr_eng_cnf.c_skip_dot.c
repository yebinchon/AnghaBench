
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *skip_dot(const char *name)
{
    const char *p = strchr(name, '.');

    if (p != ((void*)0))
        return p + 1;
    return name;
}
