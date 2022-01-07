
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const NUL ;

__attribute__((used)) static char *
strchr(char const *s, int c)
{
    do {
        if ((unsigned char)*s == (unsigned char)c)
            return s;

    } while (*(++s) != NUL);

    return ((void*)0);
}
