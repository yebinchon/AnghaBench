
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef int Char ;


 int A_K_NKEYS ;
 scalar_t__ Strcmp (int *,int ) ;
 TYPE_1__* arrow ;

int
IsArrowKey(Char *name)
{
    int i;
    for (i = 0; i < A_K_NKEYS; i++)
 if (Strcmp(name, arrow[i].name) == 0)
     return 1;
    return 0;
}
