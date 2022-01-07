
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int xprintf (char*,...) ;

void
blkpr(Char *const *av)
{

    for (; *av; av++) {
 xprintf("%S", *av);
 if (av[1])
     xprintf(" ");
    }
}
