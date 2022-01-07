
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pStack; } ;
struct TYPE_7__ {int cp; int count; } ;
typedef TYPE_1__ STRINGINFO ;
typedef TYPE_2__ FICL_VM ;


 int do_find (TYPE_2__*,TYPE_1__,int *) ;
 int stackPopINT (int ) ;
 int stackPopPtr (int ) ;
 int vmCheckStack (TYPE_2__*,int,int) ;

__attribute__((used)) static void sFind(FICL_VM *pVM)
{
    STRINGINFO si;





    si.count = stackPopINT(pVM->pStack);
    si.cp = stackPopPtr(pVM->pStack);

    do_find(pVM, si, ((void*)0));
}
