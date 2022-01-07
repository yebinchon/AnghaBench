
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ossl_isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *strip_end(char *name)
{
    char *p, c;
    if (!name)
        return ((void*)0);

    for (p = name + strlen(name) - 1; p >= name; p--) {
        c = *p;
        if (c == '"') {
            if (p - 1 == name)
                return ((void*)0);
            *p = 0;
            return name;
        }
        if (ossl_isspace(c))
            *p = 0;
        else
            return name;
    }
    return ((void*)0);
}
