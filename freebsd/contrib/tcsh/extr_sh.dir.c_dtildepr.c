
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int * getusername (int **) ;
 int xprintf (char*,int *,...) ;

void
dtildepr(Char *dir)
{
    Char* user;
    if ((user = getusername(&dir)) != ((void*)0))
 xprintf("~%-S%S", user, dir);
    else
 xprintf("%S", dir);
}
