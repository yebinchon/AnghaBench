
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int **** Char ;


 int xfree (int ******) ;

void
blkfree(Char **av0)
{
    Char **av = av0;

    if (!av0)
 return;
    for (; *av; av++)
 xfree(*av);
    xfree(av0);
}
