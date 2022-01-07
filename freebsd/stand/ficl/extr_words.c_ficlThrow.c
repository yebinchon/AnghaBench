
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int stackPopINT (int ) ;
 int vmThrow (TYPE_1__*,int) ;

__attribute__((used)) static void ficlThrow(FICL_VM *pVM)
{
    int except;

    except = stackPopINT(pVM->pStack);

    if (except)
        vmThrow(pVM, except);
}
