
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int textOut; void* fStack; void* rStack; void* pStack; } ;
typedef TYPE_1__ FICL_VM ;


 int assert (TYPE_1__*) ;
 scalar_t__ ficlMalloc (int) ;
 int ficlTextOut ;
 int memset (TYPE_1__*,int ,int) ;
 void* stackCreate (unsigned int) ;
 int stackDelete (void*) ;
 int vmReset (TYPE_1__*) ;

FICL_VM *vmCreate(FICL_VM *pVM, unsigned nPStack, unsigned nRStack)
{
    if (pVM == ((void*)0))
    {
        pVM = (FICL_VM *)ficlMalloc(sizeof (FICL_VM));
        assert (pVM);
        memset(pVM, 0, sizeof (FICL_VM));
    }

    if (pVM->pStack)
        stackDelete(pVM->pStack);
    pVM->pStack = stackCreate(nPStack);

    if (pVM->rStack)
        stackDelete(pVM->rStack);
    pVM->rStack = stackCreate(nRStack);







    pVM->textOut = ficlTextOut;

    vmReset(pVM);
    return pVM;
}
