
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

char *strrev( char *string )
{
    int i = strlen(string);
    char *p1 = string;
    char *p2 = string + i - 1;
    char c;

    if (i > 1)
    {
        while (p1 < p2)
        {
            c = *p2;
            *p2 = *p1;
            *p1 = c;
            p1++; p2--;
        }
    }

    return string;
}
