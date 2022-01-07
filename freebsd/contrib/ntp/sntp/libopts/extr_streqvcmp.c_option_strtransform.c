
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUL ;
 scalar_t__* charmap ;

void
strtransform(char * d, char const * s)
{
    do {
        *(d++) = (char)charmap[(unsigned char)*s];
    } while (*(s++) != NUL);
}
