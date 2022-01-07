
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;



Char **
blkcpy(Char **oav, Char **bv)
{
    Char **av = oav;

    while ((*av++ = *bv++) != ((void*)0))
 continue;
    return (oav);
}
