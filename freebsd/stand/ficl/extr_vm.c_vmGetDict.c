
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pSys; } ;
struct TYPE_5__ {int * dp; } ;
typedef TYPE_2__ FICL_VM ;
typedef int FICL_DICT ;


 int assert (TYPE_2__*) ;

FICL_DICT *vmGetDict(FICL_VM *pVM)
{
 assert(pVM);
 return pVM->pSys->dp;
}
