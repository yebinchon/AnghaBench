
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int here; } ;
typedef int FICL_VM ;
typedef TYPE_1__ FICL_DICT ;


 int PUSHPTR (int ) ;
 int vmCheckStack (int *,int ,int) ;
 TYPE_1__* vmGetDict (int *) ;

__attribute__((used)) static void here(FICL_VM *pVM)
{
    FICL_DICT *dp;




    dp = vmGetDict(pVM);
    PUSHPTR(dp->here);
    return;
}
