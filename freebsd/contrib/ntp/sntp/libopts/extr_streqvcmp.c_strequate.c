
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const NUL ;
 unsigned char* charmap ;

void
strequate(char const * s)
{
    if ((s != ((void*)0)) && (*s != NUL)) {
        unsigned char equiv = (unsigned char)*s;
        while (*s != NUL)
            charmap[(unsigned char)*(s++)] = equiv;
    }
}
