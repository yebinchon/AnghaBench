
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char*) ;
 scalar_t__ isspace (char) ;

char *skipSpace(char *cp, char *end)
{
    assert(cp);

    while ((cp != end) && isspace(*cp))
        cp++;

    return cp;
}
