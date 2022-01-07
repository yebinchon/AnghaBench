
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 unsigned long hash (unsigned long,scalar_t__) ;

int
hashname(Char *cp)
{
    unsigned long h;

    for (h = 0; *cp; cp++)
 h = hash(h, *cp);
    return ((int) h);
}
