
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 scalar_t__ Isdigit (char) ;

int
number(Char *cp)
{
    if (!cp)
 return (0);
    if (*cp == '-') {
 cp++;
 if (!Isdigit(*cp))
     return (0);
 cp++;
    }
    while (*cp && Isdigit(*cp))
 cp++;
    return (*cp == 0);
}
