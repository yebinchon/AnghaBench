
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pos; scalar_t__ savings; scalar_t__ length; } ;
typedef TYPE_1__ dictItem ;
typedef scalar_t__ U32 ;



__attribute__((used)) static void ZDICT_initDictItem(dictItem* d)
{
    d->pos = 1;
    d->length = 0;
    d->savings = (U32)(-1);
}
