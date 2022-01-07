
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char NUL ;
 int* charmap ;

int
streqvcmp(char const * s1, char const * s2)
{
    for (;;) {
        unsigned char u1 = (unsigned char) *s1++;
        unsigned char u2 = (unsigned char) *s2++;
        int dif;
        if (u1 == u2) {
            if (u1 == NUL)
                return 0;
            continue;
        }

        dif = charmap[ u1 ] - charmap[ u2 ];

        if (dif != 0)
            return dif;

        if (u1 == NUL)
            return 0;
    }
}
