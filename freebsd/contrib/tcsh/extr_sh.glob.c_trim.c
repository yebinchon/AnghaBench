
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int INVALID_BYTE ;
 int TRIM ;

void
trim(Char **t)
{
    Char *p;

    while ((p = *t++) != ((void*)0))
 while (*p) {



  *p &= TRIM;
     p++;
 }
}
