
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isupper (char) ;
 scalar_t__ tolower (char) ;

char *caseFold(char *cp)
{
    char *oldCp = cp;

    while (*cp)
    {
        if (isupper(*cp))
            *cp = (char)tolower(*cp);
        cp++;
    }

    return oldCp;
}
