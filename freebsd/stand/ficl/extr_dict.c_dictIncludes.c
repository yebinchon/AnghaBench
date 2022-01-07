
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int dict; } ;
typedef TYPE_1__ FICL_DICT ;



int dictIncludes(FICL_DICT *pDict, void *p)
{
    return ((p >= (void *) &pDict->dict)
        && (p < (void *)(&pDict->dict + pDict->size))
           );
}
