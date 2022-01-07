
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
basename(const char *name)
{
    const char *p = strrchr(name, '/');
    return p != ((void*)0) ? p + 1 : name;
}
