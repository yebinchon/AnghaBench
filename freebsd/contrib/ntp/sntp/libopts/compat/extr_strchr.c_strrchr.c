
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static char *
strrchr(char const *s, int c)
{
    char const *e = s + strlen(s);

    for (;;) {
        if (--e < s)
            break;

        if ((unsigned char)*e == (unsigned char)c)
            return e;
    }
    return ((void*)0);
}
