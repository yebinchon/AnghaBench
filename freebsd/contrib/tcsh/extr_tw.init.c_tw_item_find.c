
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t nlist; int ** list; } ;
typedef int Char ;


 scalar_t__ Strcmp (int *,int *) ;
 TYPE_1__ tw_item ;

Char *
tw_item_find(Char *str)
{
    size_t i;

    if (tw_item.list == ((void*)0) || str == ((void*)0))
 return ((void*)0);

    for (i = 0; i < tw_item.nlist; i++)
 if (tw_item.list[i] != ((void*)0) && Strcmp(tw_item.list[i], str) == 0)
     return tw_item.list[i];
    return ((void*)0);
}
