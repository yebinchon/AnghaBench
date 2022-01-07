
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;



Char
lastchr(Char *cp)
{

    if (!cp)
 return (0);
    if (!*cp)
 return (0);
    while (cp[1])
 cp++;
    return (*cp);
}
