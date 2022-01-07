
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_strings; int * strings; } ;


 TYPE_1__ preserve ;
 scalar_t__ strcmp (int ,char const*) ;

int
preserve_type(const char *p)
{
    int i;
    for (i = 0; i < preserve.num_strings; i++)
 if (strcmp(preserve.strings[i], p) == 0)
     return 1;
    return 0;
}
