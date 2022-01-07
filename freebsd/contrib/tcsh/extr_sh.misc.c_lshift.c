
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int blkcpy (int **,int **) ;
 int xfree (int *) ;

void
lshift(Char **v, int c)
{
    Char **u;

    for (u = v; *u && --c >= 0; u++)
 xfree(*u);
    (void) blkcpy(v, u);
}
