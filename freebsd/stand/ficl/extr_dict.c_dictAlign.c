
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int here; } ;
typedef TYPE_1__ FICL_DICT ;


 int alignPtr (int ) ;

void dictAlign(FICL_DICT *pDict)
{
    pDict->here = alignPtr(pDict->here);
}
