
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strend(const char *cp)
{
    if (!cp)
 return ((char *)(intptr_t)cp);
    while (*cp)
 cp++;
    return ((char *)(intptr_t)cp);
}
