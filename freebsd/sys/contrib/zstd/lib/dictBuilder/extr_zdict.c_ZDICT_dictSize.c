
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t pos; scalar_t__ length; } ;
typedef TYPE_1__ dictItem ;
typedef size_t U32 ;



__attribute__((used)) static U32 ZDICT_dictSize(const dictItem* dictList)
{
    U32 u, dictSize = 0;
    for (u=1; u<dictList[0].pos; u++)
        dictSize += dictList[u].length;
    return dictSize;
}
