
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Char ;


 void stub1 (scalar_t__) ;

void
rscan(Char **t, void (*f) (Char))
{
    Char *p;

    while ((p = *t++) != ((void*)0))
 while (*p)
     (*f) (*p++);
}
