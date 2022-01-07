
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STRINGINFO ;
typedef void FICL_WORD ;
typedef int FICL_VM ;


 int PUSHINT (int) ;
 int PUSHPTR (void*) ;
 int PUSHUNS (int ) ;
 void* dictLookup (int ,int ) ;
 int vmGetDict (int *) ;
 scalar_t__ wordIsImmediate (void*) ;

__attribute__((used)) static void do_find(FICL_VM *pVM, STRINGINFO si, void *returnForFailure)
{
    FICL_WORD *pFW;

    pFW = dictLookup(vmGetDict(pVM), si);
    if (pFW)
    {
        PUSHPTR(pFW);
        PUSHINT((wordIsImmediate(pFW) ? 1 : -1));
    }
    else
    {
        PUSHPTR(returnForFailure);
        PUSHUNS(0);
    }
    return;
}
